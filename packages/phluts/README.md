<p>
  <img src="https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/phluts_banner.png" width="100%" alt="Phluts: Server-Driven UI Framework for Flutter" />
</p>

<p align="center">
  <a href="https://pub.dev/packages/phluts"><img src="https://img.shields.io/pub/v/phluts?label=pub.dev&labelColor=0F172A&logo=dart&logoColor=fff&color=0EA5E9&style=flat" alt="pub"></a>
  <a href="https://github.com/PhlutsDev/phluts"><img src="https://img.shields.io/github/stars/PhlutsDev/phluts?style=flat&label=stars&labelColor=0F172A&color=8B5CF6&logo=github&logoColor=fff" alt="github"></a>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-22C55E.svg?labelColor=0F172A&style=flat" alt="license"></a>
  <a href="https://discord.com/invite/vTGsVRK86V"><img src="https://img.shields.io/discord/1326481685579173888?logo=discord&logoColor=fff&labelColor=0F172A&color=5865F2&style=flat" alt="discord"></a>
  <a href="https://github.com/PhlutsDev/phluts"><img src="https://img.shields.io/github/contributors/PhlutsDev/phluts?logo=github&logoColor=fff&labelColor=0F172A&color=F59E0B&style=flat" alt="contributors"></a>
  <a href="https://github.com/invertase/melos"><img src="https://img.shields.io/badge/maintained%20with-melos-F472B6.svg?labelColor=0F172A&style=flat" alt="melos"></a>
</p>

<p align="center">
  <a href="https://phluts.dev/">Website</a> •
  <a href="https://console.phluts.dev/">Console</a> •
  <a href="https://docs.phluts.dev/quickstart">Quickstart</a> •
  <a href="https://docs.phluts.dev/">Documentation</a> •
  <a href="https://discord.com/invite/vTGsVRK86V">Community & Support</a> •
  <a href="https://github.com/PhlutsDev/phluts">GitHub</a>
</p>

# Phluts

**Phluts** is a **Server-Driven UI (SDUI) framework for Flutter**. It lets you build and update your app's UI on the fly, without waiting for app store reviews!
Instead of hard-coding everything in your app, you write your UI using **Phluts's intuitive Dart DSL**. Your server then delivers this UI as a JSON payload, and Phluts automatically renders it natively on the client at runtime.

Why use Phluts?

- **Ship instantly:** Tweak your UI in Dart, push it to your server, and boom—your users see it immediately.
- **A/B testing made easy:** Try out different layouts or personalize the experience without rolling out a new app version.
- **Build once:** Keep your UI consistent across iOS, Android, and Web with a unified backend schema.
- **Move faster:** Let your backend dictate layouts directly without ever touching the client-side Flutter codebase.

## Features 📦

- 🚀 **Instant updates:** Push UI changes straight from your server. No app store waiting rooms.
- 💻 **Familiar Dart syntax:** Write your server UI using our purely Dart DSL. It feels just like writing traditional Flutter code!
- 🧩 **Native rendering:** Phluts translates your server's payload into lightning-fast native Flutter widgets on the client.
- 🧱 **Prebuilt components:** Comes with a massive library of ready-to-use standard Flutter widgets.
- 🌐 **Network requests:** Trigger API calls and manage data directly from your server payload.
- 🧭 **Navigation:** Control routing, open dialogs, and trigger bottom sheets from the backend.
- 📝 **Forms & validation:** We handle the messy form state and validation for you.
- 🎨 **Dynamic theming:** Change colors, fonts, and layouts on the fly using `PhlutsTheme`.
- 💾 **Smart caching:** Built-in screen caching so your app feels blazing fast, even on flaky networks.
- 🛠️ **Custom widgets:** Need a custom chart or native integration? Easily build and register your own UI components.

## Quick Start

It's super easy to get started. You just need to initialize Phluts and tell it which screen to load.

### 1. Initialize Phluts
Set up Phluts in your app's `main.dart` and provide a `routeName` to fetch from your server.

```dart
import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';

// import 'package:my_app/default_phluts_options.dart';

void main() async {
  // Initialize Phluts with optional custom configurations
  await Phluts.initialize(options: defaultPhlutsOptions);
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phluts App',
      // Pass a routeName to load your dynamic SDUI screen!
      home: Phluts(routeName: 'get_started'),
    );
  }
}
```

### 2. Write your UI
You can author your screens using Phluts's Dart package. It feels just like writing normal Flutter code, but it compiles down to JSON!

<table width="100%">
<tr>
<td width="70%">

```dart
import 'package:phluts_core/phluts_core.dart';

import '../widgets/primary_button.dart';

@PhlutsScreen(screenName: "loginScreen")
PhlutsWidget loginScreen() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(
      leading: PhlutsIconButton(
        onPressed: PhlutsNavigator.pop(),
        icon: PhlutsIcon(
          icon: PhlutsIcons.chevron_left,
          color: PhlutsColors.onSurfaceVariant,
        ),
      ),
    ),
    body: PhlutsPadding(
      padding: PhlutsEdgeInsets.symmetric(horizontal: 20),
      child: PhlutsColumn(
        crossAxisAlignment: PhlutsCrossAxisAlignment.start,
        children: [
          PhlutsRow(
            crossAxisAlignment: PhlutsCrossAxisAlignment.end,
            children: [
              PhlutsText(
                data: 'Sign in',
                style: PhlutsThemeData.textTheme.titleLarge,
              ),
              PhlutsSizedBox(width: 10),
              PhlutsExpanded(
                child: PhlutsDivider(
                  height: 20,
                  thickness: 1,
                  color: PhlutsColors.black,
                ),
              ),
            ],
          ),
          PhlutsSizedBox(height: 32),
          PhlutsTextField(
            decoration: PhlutsInputDecoration( 
              labelText: 'Email',
              labelStyle: PhlutsThemeData.textTheme.bodyMedium,
            ),
          ),
          PhlutsSizedBox(height: 24),
          PhlutsTextField(
            decoration: PhlutsInputDecoration(
              labelText: 'Password',
              labelStyle: PhlutsThemeData.textTheme.bodyMedium,
            ),
            obscureText: true,
            maxLines: 1,
          ),
          PhlutsSizedBox(height: 4),
          PhlutsTextButton(
            onPressed: PhlutsNavigator.pushPhluts('forgot_password_screen'),
            child: PhlutsText(data: 'Forgot password?'),
          ),
          PhlutsSpacer(),
          primaryButton(
            text: 'Proceed',
            onPressed: PhlutsNavigator.pushPhluts('home_screen'),
          ),
        ],
      ),
    ),
  );
}

PhlutsWidget primaryButton({
  required String text,
  required PhlutsAction onPressed,
}) {
  return PhlutsPadding(
    padding: PhlutsEdgeInsets.only(top: 20, bottom: 48),
    child: PhlutsFilledButton(
      onPressed: onPressed,
      child: PhlutsRow(
        children: [
          PhlutsText(data: text),
          PhlutsSpacer(),
          PhlutsIcon(icon: PhlutsIcons.arrow_forward, size: 20),
        ],
      ),
    ),
  );
}
```
</td>
<td width="30%" align="center" valign="top">
  <img src="https://github.com/PhlutsDev/phluts/blob/dev/assets/login.png" alt="Phluts Form Screen" height="840" />
</td>
</tr>
</table>

## Documentation

- 📚 **[Full Documentation](https://docs.phluts.dev/)** – Complete guides and API reference
- 🚀 **[Quick Start](https://docs.phluts.dev/quickstart)** – Get up and running in minutes
- 🛠️ **[Phluts CLI](https://docs.phluts.dev/cli)** – Command-line tools for development
- 🎛️ **[Phluts Console](https://console.phluts.dev/)** – Web interface for managing your app
- 🤝 **[Contributing](https://github.com/PhlutsDev/phluts/blob/dev/CONTRIBUTING.md)** – Help build Phluts

## License

This project is licensed under the MIT License - see the [LICENSE](/LICENSE) file for details.

## Join our community

- 💬 **[Discord](https://discord.com/invite/vTGsVRK86V)** – Chat with the community and get help
- 🐙 **[GitHub](https://github.com/PhlutsDev/phluts)** – Report issues and contribute
- 🐦 **[X](https://x.com/phluts_dev)** – Follow us for updates

---

<p align="center"> Developed with 💙 by the Phluts team and our amazing community</p>

<p align="center">
<a href="https://github.com/PhlutsDev/phluts/graphs/contributors">
  <img src="https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/contributor_banner.png" alt="Phluts Contributors"/>
</a>
</p>

