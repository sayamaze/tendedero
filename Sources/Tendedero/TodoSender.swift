import Foundation

/// Ships a note's text to the todo app's analysis endpoint. The todo app
/// analyses the text with its own AI and files a structured task; Tendedero
/// only delivers the raw text and never sees the model. The endpoint is local
/// and unauthenticated, like the rest of the todo app's API.
enum TodoSender {
    /// Where the todo app listens. Its API moves to a free port if this one
    /// is taken, so the value lives in one place for easy adjustment.
    static var endpoint = "http://localhost:7100/api/tasks/analyze"

    /// Sends the text off the main thread, then reports back on it.
    /// The completion gets `true` when the todo app accepted the text.
    static func send(text: String, completion: @escaping @MainActor (Bool, String) -> Void) {
        guard let url = URL(string: endpoint) else {
            DispatchQueue.main.async { completion(false, "bad endpoint") }
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.timeoutInterval = 15
        let payload: [String: String] = ["text": text, "source": "tendedero"]
        request.httpBody = try? JSONSerialization.data(withJSONObject: payload)

        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error {
                    completion(false, error.localizedDescription)
                    return
                }
                let status = (response as? HTTPURLResponse)?.statusCode ?? 0
                // 200/201/202 all mean the todo app took the text.
                if (200...299).contains(status) {
                    completion(true, "")
                } else {
                    let body = data.flatMap { String(data: $0, encoding: .utf8) } ?? ""
                    completion(false, "HTTP \(status) \(body)")
                }
            }
        }.resume()
    }
}
