#pragma once

#include "Window.h"
#include "Events/Event.h"
#include "Events/WindowEvent.h"

#include "GraphicsContext.h"
#include "glad/glad.h"

namespace art {

	class Application
	{
	public:
		Application();
		virtual ~Application();

		void Run();

		void OnEvent(Event& e);

		void Close();

	private:
		bool OnWindowClosed(WindowClosedEvent& e);
		bool OnWindowResized(WindowResizedEvent& e);

	private:
		bool m_running;
		Window* m_window;
		GraphicsContext* m_context;
	};

}