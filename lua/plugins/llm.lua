return {
	"huggingface/llm.nvim",
	opts = {
		model = "llama3",
		backend = "ollama",
		url = "http://localhost:11434",
		request_body = {
			options = {
				temperature = 0.2,
				top_p = 0.95,
			},
		},
	},
	enabled = false,
}
