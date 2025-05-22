terraform {
  required_providers {
    render = {
      source  = "jakejarvis/render"
      version = "0.6.0"
    }
  }
}

provider "render" {
  api_key = "YOUR_RENDER_API_KEY"
}
