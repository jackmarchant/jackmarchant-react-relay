# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Jackmarchant.Repo.insert!(%Jackmarchant.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

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
