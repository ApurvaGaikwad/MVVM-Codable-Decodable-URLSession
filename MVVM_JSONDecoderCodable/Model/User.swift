
import Foundation
struct User : Codable {
	let id : String?
	let blogId : String?
	let createdAt : String?
	let name : String?
	let avatar : String?
	let lastname : String?
	let city : String?
	let designation : String?
	let about : String?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case blogId = "blogId"
		case createdAt = "createdAt"
		case name = "name"
		case avatar = "avatar"
		case lastname = "lastname"
		case city = "city"
		case designation = "designation"
		case about = "about"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		blogId = try values.decodeIfPresent(String.self, forKey: .blogId)
		createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		avatar = try values.decodeIfPresent(String.self, forKey: .avatar)
		lastname = try values.decodeIfPresent(String.self, forKey: .lastname)
		city = try values.decodeIfPresent(String.self, forKey: .city)
		designation = try values.decodeIfPresent(String.self, forKey: .designation)
		about = try values.decodeIfPresent(String.self, forKey: .about)
	}

}
