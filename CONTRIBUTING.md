
# CONTRIBUTING

Some basic guidelines for contributing to this project

- Do not target the latest major patch of Turtle-WoW
- Any SQL updates should be placed in sql/wip_updates/ in a SQL script named for its table. They will be merged into a proper full update when deemed appropriate
- Always comment SQL blocks
- Test all contributions thoroughly before issuing a PR. ([DPSMate][21] is a great tool to really test changes)
- Always point to issues that you are resolving in PRs. If no issue exists, create one and label appropriately.
- Avoid direct spell edits, instead use spell_affect, spell_proc_event, spell_scripts, or backend code when needed


[21]: https://github.com/laytya/DPSMate

