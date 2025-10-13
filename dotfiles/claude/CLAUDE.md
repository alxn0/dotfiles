# Claude Programming Patterns

## Core Principles

**Philosophy**: 
- Write code that is **readable**, **maintainable**, and **performant**. 
- Favor **explicit over implicit**, **simple over complex**, and **composition over inheritance**.
- PREFER solutions that makes code **easier to understand and modify**.
- FAVOR simple solutions that are **human-readable**.

**Design**:
- Code should be **self-documenting** through clear structure and naming
- Prefer **pure functions** and **immutable data** when possible

*From "A Philosophy of Software Design" by John Ousterhout*
- Here **modules** Any code component with an interface (functions, classes, packages, services, APIs) 
- **Module should be deep**. They should allow access to more  functionnalities 
  through simple interface. hides complex functionality.
- **Module should encapsulate knowledge** that represent design
  decision. This knowledge should NOT appear on the interface (hide
  implementation details). This include information on data structure, 
  algorithms and other design decisions. 
- Favor **general purpose modules** to make code simpler, cleaner and
  easier to understand.
- SEPARATE **general-purpose code** from **special-purpose code**. 
  Don't mix general utilities with domain-specific logic


## Naming Conventions

**General Rules**:
- USE **descriptive names** that reveal intent
- **AVOID** **abbreviations** and **generic names**
- PREFER **clear names** over cryptic ones
- PREFER **shorter names**
- MAINTAIN **consistent vocabulary** throughout the project

**Functions**: 
- Use **verbs** that describe what the function does
- **Boolean functions** should be questions (`is_valid`, `has_permission`)

**Variables**: 
- Use **nouns** that describe what the data represents
- **Boolean variables** should be statements (`is_enabled`, `has_data`)

**Classes**: 
- Use **nouns** that represent the entity or concept
- **Avoid suffixes** like `Manager` or `Helper` unless truly needed

**Constants**: 
- Use **meaningful names** that EXPLAIN the purpose, NOT JUST the value

## Project Organization

**Structure**:
- ORGANIZE by **feature/domain**, NOT BY technical layer
- SEPARATE **business logic** from **infrastructure concerns**
- Use **clear package/module boundaries** with SINGLE RESPONSABILITIES

## Documentation 

**Code Documentation**:
- Include **comprehensive documentation** for PUBLIC OBJECTS
- Document **public APIs** comprehensively
- Explain **non-obvious business logic** and algorithms
- Include **usage examples** for complex interfaces
- **Maintain documentation** alongside code changes

**Project Documentation**:
- Use `ARCHITECTURE.md` to store **high-level system design** and
  architecture diagram (in ASCII diagram) for complex project and
  package.
- Use `README.md` to store project **title and description**, **Quick
  start**, **installation**, **usage example**.
- Reference **specific files and modules** when relevants.
- KEEP explanation CONCISE but COMPLETE

---

## Agents workflow

**Temporary testing**
- When creating test file, put them in `tmp/` folder

## Python-Specific Patterns

### Language Preferences
- **Python Version**: Target **last version**, minimum **3.10**
- **Code Style**: Follow **PEP 8** with **80-character line length**
- **Static typing**: NEVER USE static typing UNLESS asked

### Tools
- **Formatting**: Use `ruff` for consistent formatting
- **Linting**: Use `ruff` for comprehensive code analysis
- **Management**: Use `pixi` for project management
- **Static typing**: Use `mypy`

### Preferred Libraries

- **Data Processing**: `polars` (primary), `pandas` (when ecosystem requires)
- **Scientific computing**: `scipy` (primary), and `scikit-learn` for
machine learning.
- **Web Frameworks**: `fastapi` (APIs), `streamlit` (data apps), `flask` (simple apps)
- **Testing**: `pytest` with **fixtures** and **parametrization**
- **Configuration**: `dataclasses` for structured config, `python-dotenv` for environment

### Naming Conventions

**Files & Modules**: `snake_case` (`data_processor.py`)
**Functions & Variables**: `snake_case` (`process_data`, `user_count`)
**Classes**: `PascalCase` (`DataProcessor`, `ConfigManager`)
**Constants**: `SCREAMING_SNAKE_CASE` (`MAX_RETRY_ATTEMPTS`)
**Private Members**: **Single underscore prefix** (`_internal_method`)

### Project Structure

- Prefer a structure were modules (i.e., scripts) are stored in 
`project/project_name` without nested directory.

```
project/
├── project_name/
├── tests/                 # Test suite
├── docs/                  # Documentation
├── pyproject.toml         # Project configuration
└── requirements.txt       # Dependencies
```

- Use **nested** directory in `project/project_name` only if asked to.

### Data Processing Patterns

**Data object**
Prefer `dataclass` for data with type annotations over `collections.namedtuple` or `typing.NamedTuple`

**DataFrame Operations**:
- Prefer **method chaining** for readability
- Define **schemas explicitly** for validation
- Use **lazy evaluation** for large datasets
- Process data in **chunks** when memory-constrained

**Functional Programming**:
- Use **comprehensions** for simple transformations.
- Une functionnal programming functions (`map`, `filter`, `reduce`) 
for more complex operations.
- Prefer **generators** for large sequences
- Use **partial application** for configuration

### Object-oriented Design

- **PREFER functionnal programming over class-oriented desing**
- Use class when there is a clear ADVANTAGE for readability and
  usability. For example:
  - Data object (with `dataclass`) with method use to modify, export, visualize, etc.
  - REST Client

**Class Design**:
- Favor **composition over inheritance**
- Use `dataclasses` for **data containers**
- Keep classes focused on **single responsibilities**

**Design Patterns**:
- **Builder pattern** for complex object construction
- **Factory pattern** for object creation logic
- **Context managers** for resource management
- **Decorators** for cross-cutting concerns

### Error Handling

**Exception Strategy**:
- Create **custom exception hierarchies** for domain errors
- **Validate early** with descriptive error messages
- Use **specific** errors when possible
- Use **context managers** for resource cleanup
- **Log exceptions** with sufficient debugging context

### Configuration Management

**Environment-Based Config**:
- Use **environment variables** for deployment settings
- Provide **sensible defaults** where appropriate
- **Validate configuration** on application startup
- Separate **development and production** configurations

### Testing Patterns

### Performance Considerations

**Optimization Strategy**:
- OPTIMIZATION IS THE ROOT OF ALL EVIL: Start by writing understandable
understandable code before optimization.
- **Profile before optimizing**
- Use **appropriate data structures** for access patterns
- Leverage **lazy evaluation** and **generators**
- **Cache expensive computations** appropriately
- Process **large datasets in chunks**

## Version Control
- Use **conventional commit messages**
- Maintain **clean git history** with rebasing

### Interactive Applications (Streamlit)
**State Management**:
- **Initialize session state** with defaults
- **Cache expensive computations** appropriately
- Implement **state reset functionality**
- Handle **concurrent user sessions** properly

**Component Design**:
- Create **reusable widget components**
- Separate **business logic** from **UI logic**
- Implement **proper error handling** in UI
- Provide **clear user feedback** for operations
