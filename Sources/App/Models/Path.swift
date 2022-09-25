import Fluent
import Vapor

final class Path: Model, Content {
    static let schema = "paths"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "coordinates")
	var coordinates: [Coordinate]

    init() { }

    init(id: UUID? = nil, coordinates: [Coordinate]) {
        self.id = id
        self.coordinates = coordinates
    }
}

final class Coordinate: Fields {
	@Field(key: "latitude")
	var latitude: Double
	
	@Field(key: "longitude")
	var longitude: Double
	
	init() { }
}
