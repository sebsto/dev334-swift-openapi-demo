# Demo script 

## Open directory in VSCode

Directory is pre populated with 

- `Sources/openapi.yaml` 
- `Sources/openapi-generator-config.yaml`

## Explore the `openapi.yaml` file

- Show the operation 
- Show the input parameter
- Show the output parameter 
- Show the type definition of the output parameter

## Create project 

```sh
swift package init --type executable --name QuoteService
```

## Open `Package.swift`

- Position cursor after `name: "QuoteService",` 
- enter a new line 
- Add snippet : `^ SPACE pkg1`
- Show what has been added (`platforms` `products`, and `dependencies`)

- position cursor after 
   ```
	 .executableTarget(
            name: "QuoteService"
   ```
- Send `)` to the next line 
- insert a space ` `
- Add snippet : `^ SPACE pkg2`

## Prepare the file

- Rename `Sources/main.swift` to `Sources/QuoteService.swift`
- Open `QuoteService.swift`, select all text and delete it.

## Add the code to implement `QuoteService` 

- Manually add 

   ```swift
   import Foundation
   import OpenAPIRuntime

   public struct QuoteService : APIProtocol {

   }
   ```

- Position the cursor in the `struct`
- Add snippet : `^ SPACE code`
- Tour the code

## Add OpenAPI Lambda dependencies

- Open `Package.swift`
- Go to the `dependencies` section
- add a comma `,` and a new line
- Add snippet : `^ SPACE pkg3`

- Navigate to the `dependencies` section of `executableTarget`
  ```
	 .executableTarget(
         name: "QuoteService"
         dependencies: [
            .product(name: "OpenAPIRuntime",package: "swift-openapi-runtime"),
   ```

- Insert a line
- Add snippet : `^ SPACE pkg4`

## 4 changes to allow to deploy on Lambda

1.

2.

3.

4.
