```sh
mkdir MyLambda && cd MyLambda
swift package init --type executable
swift package add-dependency https://github.com/swift-server/swift-aws-lambda-runtime.git --branch main
swift package add-target-dependency AWSLambdaRuntime MyLambda --package swift-aws-lambda-runtime
```

```swift
    platforms: [.macOS(.v15)],
```

```swift
import AWSLambdaRuntime

// in this example we are receiving and responding with strings

let runtime = LambdaRuntime {
    (event: String, context: LambdaContext) in
        return String(event.reversed())
}

try await runtime.run()
```

```sh
swift run
curl -v --data '"Hello Swift @ re:Invent"'  http://127.0.0.1:7000/invoke
```

```sh
swift package archive --allow-network-connections docker

AWS_ACCOUNT_ID=486652066693
aws lambda create-function \
--function-name MyLambda \
--zip-file fileb://.build/plugins/AWSLambdaPackager/outputs/AWSLambdaPackager/MyLambda/MyLambda.zip \
--runtime provided.al2 \
--handler provided  \
--architectures arm64 \
--role arn:aws:iam::${AWS_ACCOUNT_ID}:role/lambda_basic_execution

aws lambda invoke \
--function-name MyLambda \
--payload $(echo \"Hello Swift @ re:Invent\" | base64) out.txt

aws lambda delete-function \
--function-name MyLambda
```
