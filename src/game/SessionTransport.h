#pragma once

// Transport capability of a session: real network socket or module-driven
// headless. The core never attaches module identity to it.
enum class SessionTransport : unsigned char
{
    Network,
    Headless,
};
