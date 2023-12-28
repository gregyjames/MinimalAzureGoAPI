package main

import (
	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/middleware/compress"
)

func main() {
	app := fiber.New()

	// Set Compression Level
	app.Use(compress.New(compress.Config{
		Level: compress.LevelDefault,
	}))

	app.Get("/", func(c *fiber.Ctx) error {
		return c.SendString("Hello, World 👋!")
	})

	app.Listen(":8080")
}
