import Vapor

let drop = Droplet()

drop.get("html") { request in
    return try drop.view.make("index.html")
}

drop.resource("posts", PostController())

drop.run()
