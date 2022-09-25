import Fluent
import FluentSQLiteDriver
import Leaf
import Vapor

// configures your application
public func configure(_ app: Application) throws {
	app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
	app.middleware.use(app.sessions.middleware)
	app.sessions.use(.fluent)
	app.databases.use(.sqlite(.file("db.sqlite")), as: .sqlite)
    app.migrations.add(PathMigration())
    app.views.use(.leaf)
	
    try routes(app)
}
