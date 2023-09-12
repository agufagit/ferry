[![MIT License][license-badge]][license-link]
[![PRs Welcome][prs-badge]][prs-link]
[![Watch on GitHub][github-watch-badge]][github-watch-link]
[![Star on GitHub][github-star-badge]][github-star-link]
[![Watch on GitHub][github-forks-badge]][github-forks-link]
[![Discord][discord-badge]][discord-link]

[license-badge]: https://img.shields.io/github/license/gql-dart/ferry.svg?style=for-the-badge
[license-link]: https://github.com/gql-dart/ferry/blob/master/LICENSE
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge
[prs-link]: https://github.com/gql-dart/ferry/issues

[github-watch-badge]: https://img.shields.io/github/watchers/gql-dart/ferry.svg?style=for-the-badge&logo=github&logoColor=ffffff
[github-watch-link]: https://github.com/gql-dart/ferry/watchers
[github-star-badge]: https://img.shields.io/github/stars/gql-dart/ferry.svg?style=for-the-badge&logo=github&logoColor=ffffff
[github-star-link]: https://github.com/gql-dart/ferry/stargazers
[github-forks-badge]: https://img.shields.io/github/forks/gql-dart/ferry.svg?style=for-the-badge&logo=github&logoColor=ffffff
[github-forks-link]: https://github.com/gql-dart/ferry/network/members

[discord-badge]: https://img.shields.io/discord/559455668810153989.svg?style=for-the-badge&logo=discord&logoColor=ffffff
[discord-link]: https://discord.gg/QRTfXE

A Store implementation that uses `isar` to persist data.

# Usage

```dart
import 'package:isar/isar.dart';
import 'package:ferry_isar_store/ferry_isar_store.dart';
import 'graphql/__generated__/schema.schema.gql.dart' show possibleTypesMap;

// call this in main() or beginning of an isolate
Isar.open(
  schemas: [
    ...
    FerryCacheSchema,
  ],
  directory: await getApplicationDocumentsDirectory(),
);

// call this when create ferry client
final isar = Isar.get(schemas: [FerryCacheSchema]);
final cache = Cache(store: IsarStore(isar), possibleTypes: possibleTypesMap);

final link = Link.from([...]);

final client = LinkClient(
  link: link,
  cache: cache,
);
```

# Multiple Isolates

Needs to call `Isar.open` for every isolate

# Multiple stores

Needs to call `Isar.open(schemas: [...], directory: ...)` with different directory value to create different store