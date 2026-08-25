#pragma once

// Generic transport capability for network-backed and synthetic sessions.
// Native modules may drive normal logged-in characters through a session
// that has no socket; the core knows *that* a session is headless, never
// *why*. No gameplay system may branch on a module identity here.
enum class SessionTransport : unsigned char
{
    Network,
    Headless,
};
