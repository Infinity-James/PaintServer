import Fluent

struct PathMigration: AsyncMigration {
    func prepare(on database: Database) async throws {
		try await database.schema(Path.schema)
            .id()
			.field("coordinates", .array, .required)
            .create()
    }

    func revert(on database: Database) async throws {
		try await database.schema(Path.schema).delete()
    }
}
