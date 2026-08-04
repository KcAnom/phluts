import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:phluts/phluts.dart';
import 'package:phluts_playground/app/embed/embed_message_channel.dart';

class EmbedScreen extends StatefulWidget {
  const EmbedScreen({
    super.key,
    this.initialJson,
  });

  final Map<String, dynamic>? initialJson;

  @override
  State<EmbedScreen> createState() => _EmbedScreenState();
}

class _EmbedScreenState extends State<EmbedScreen> {
  final EmbedMessageChannel _embedMessageChannel = EmbedMessageChannel();
  late Map<String, dynamic> _jsonData;

  final Map<String, dynamic> embedHelloPhlutsSample = {
    "type": "scaffold",
    "body": {
      "type": "center",
      "child": {
        "type": "text",
        "data": "Hello Phluts",
      }
    }
  };

  @override
  void initState() {
    super.initState();
    _jsonData = widget.initialJson ?? embedHelloPhlutsSample;

    _embedMessageChannel.start((jsonPayload) {
      if (!mounted) return;
      setState(() {
        _jsonData = jsonPayload;
      });
    });
  }

  @override
  void dispose() {
    _embedMessageChannel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const _EmbedScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: _jsonData.isEmpty
              ? const SizedBox.shrink()
              : Phluts.fromJson(_jsonData, context),
        ),
      ),
    );
  }
}

class _EmbedScrollBehavior extends MaterialScrollBehavior {
  const _EmbedScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
