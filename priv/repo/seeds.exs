Jackmarchant.Repo.delete_all(Jackmarchant.Post)

Jackmarchant.Repo.insert!(%Jackmarchant.Post{
  slug: "react-one-year-later",
  title: "React - One Year Later",
  body: "I like learning, continuously improving my skills, and like most things I come across, they take a while to sink in. I’m sure it’s the same for most people. We get exposed to an idea, come across it on twitter or through a co-worker, then we think about it and compare it to what we previously thought."
})

Jackmarchant.Repo.insert!(%Jackmarchant.Post{
  slug: "first-impressions-of-elixir",
  title: "First Impressions of Elixir",
  body: "Elixir is a functional programming language based on Erlang. I’m told it’s very similar to Ruby, with a few tweaks and improvements to the developer experience and language syntax. [Detour – buckle your seatbelts] I’m drawn to Elixir because of my interest in Functional Programming, generally and specially in JavaScript."
})

Jackmarchant.Repo.insert!(%Jackmarchant.Post{
  slug: "elixir-pattern-matching-in-a-nutshell",
  title: "Elixir Pattern Matching in a nutshell",
  body: "Before being introduced to Elixir, a functional programming language built on top of Erlang, I had no idea what pattern matching was. Hopefully, by the end of this article you will have at least a rudimentary understanding of how awesome it is."
})
