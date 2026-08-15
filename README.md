# Modular 2D Turn-Based RPG Framework (Godot 4)

A modular, data-driven 2D turn-based RPG engine and framework developed in **Godot 4**. The project is designed with a strong focus on clean software architecture, component-based entity composition, and extensible resource pipelines inspired by classic turn-based monster taming mechanics.

---

## 📌 Architecture & Design Principles

The framework prioritizes maintainability, decoupling, and data-driven workflows:

- **Data-Driven Architecture (Custom Resources):** All gameplay entities—including monster definitions, move sets, elemental affinities, and inventory items—are modeled as standalone Godot `Resource` files (`.tres`) rather than hardcoded logic.
- **Component-Based Composition:** Entities (players, combatants, interactables) are constructed via reusable node components (e.g., `StatsComponent`, `HitboxComponent`, `InteractionComponent`) rather than deep inheritance trees.
- **Decoupled UI & State Machines:** Combat flows, turn sequencing, and dialogue/menus are driven by explicit finite state machines (FSM), separating underlying logic from visual presentation and rendering.
- **Compatibility-Focused Rendering:** Built targeting Godot 4's 2D rendering pipeline with pixel-perfect viewport scaling for retro aesthetic workflows.

---

## 🛠️ Core Engine Systems

### 1. Battle & Turn Pipeline
- **Finite State Machine (FSM):** Orchestrates round sequencing (`TurnStart` $\rightarrow$ `ActionSelection` $\rightarrow$ `Execution` $\rightarrow$ `Resolution` $\rightarrow$ `TurnEnd`).
- **Dynamic Damage Calculator:** Computes physical/special damage values, critical variance, and type advantage matrices based on modular math formulas.

### 2. Data Pipelines (`src/resources/`)
```text
MonsterData (.tres)
├── Base Stats (HP, Atk, Def, SpAtk, SpDef, Speed)
├── Learnset / Action Pool (Array[MoveData])
└── Type Affinities
```
### 3. Grid & World Interaction
- Tile-aligned grid navigation system with collision validation.
- Event-driven interaction triggers for world entities and encounter zones.

## 📂 Repository Structure
```text
├── assets/
│   ├── sprites/               # Pixel art assets and sprite sheets
│   └── ui/                    # Menus, HUD frames, and fonts
├── src/
│   ├── components/            # Reusable entity components (Stats, Health, etc.)
│   ├── core/                  # Global singletons (EventBus, GameManager)
│   ├── entities/              # Base player, monster, and NPC scenes
│   ├── resources/             # Resource definitions and scripts
│   │   ├── items/             # Consumables and equipable items
│   │   ├── moves/             # Move data definitions
│   │   └── monsters/          # Base monster stat blueprints
│   ├── systems/
│   │   ├── battle/            # Turn-based combat controller and state machines
│   │   └── world/             # Grid movement and interaction managers
│   └── ui/                    # Combat overlays, dialogue, and inventory views
├── project.godot              # Godot 4 project configuration
└── README.md                  # Project documentation
```
## 🧰 Tech Stack
- Engine: Godot 4.x (GDScript)
- Architecture Pattern: Entity-Component Composition & Finite State Machines (FSM)
- Asset Pipeline: Aseprite / Custom Tilemaps

## 🚀 Setup & Development
Prerequisites
Godot Engine 4.x Standard

### Running the Project
Clone the repository:

```bash
git clone [https://github.com/HydroCation/monster-tamer.git](https://github.com/HydroCation/monster-tamer.git)
cd monster-tamer
Open Godot 4 and click Import.
Browse to the cloned directory and select the project.godot file.
Open the project and press F5 to run the main scene.
```
## 🗺️ Roadmap & Current Status
[x] Core resource data architecture (MonsterData, MoveData).

[x] Basic turn-based battle state loop structure.

[ ] Party management and slot swapping.

[ ] Status effect and buff/debuff modifiers.

[ ] Save/Load state serialization.
