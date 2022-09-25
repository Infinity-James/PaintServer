import Fluent
import Vapor

func routes(_ app: Application) throws {
    try app.register(collection: V1Controller())
	app.get(use: home)
}

private func home(_ req: Request) async throws -> View {
	try await req.view.render("home")
}
