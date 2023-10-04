# openapi-gen-sample

OpenAPI定義とHTML生成のサンプルを格納する

## OpenAPIの記載について

OpenAPIからコードを自動生成するにあたり、以下に気を付けてください。
その他の部分については、OpenAPI Specに従ってください。

### enumに「x-enum-varnames」で名称をつけること

enumが自動で付けられると可読性が低いため、生成されるenumを指定します。

例
```yaml
noticeType:
    description: 色
    type: string
    enum: ["white", "blue", "black"]
    x-enum-varnames: ["WHITE", "BLUE", "BLACK"]
    example: "white"

```

## コード生成 (モデル定義のみ)

### 前提条件
#### Mac
- openapi-generatorがインストールされていること
  - `brew install openapi-generator`
    - ※要Homebrew

#### Windows(WSL)
- openapi-generatorがインストールされていること
  - `npm install @openapitools/openapi-generator-cli -g`
    - ※要jre, node.js

### 生成コマンド (TypeScript)

プロジェクトのディレクトリ内で以下のコマンドを実行する。

```bash
# mac 
openapi-generator generate -i openapi.yaml -g typescript-axios -o dist --global-property models,supportingFiles

# wsl
npx openapi-generator-cli generate -i openapi.yaml -g typescript-axios -o dist --global-property models,supportingFiles


# 生成された以下のファイルを利用する
# dist/api.ts
# dist/base.ts
# dist/common.ts
# dist/configuration.ts
```
