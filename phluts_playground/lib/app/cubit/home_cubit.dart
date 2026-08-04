import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phluts_playground/app/cubit/home_state.dart';
import 'package:phluts_playground/data/component_entries.dart';
import 'package:phluts_playground/data/playground_entry.dart';

/// Superset of playground screens and gallery components.
final List<PlaygroundEntry> playgroundEntries = [
  const PlaygroundEntry(
    id: 'hello_phluts',
    title: 'Hello Phluts',
    description: 'Welcome screen introducing the Phluts SDUI framework',
    json: helloPhlutsSample,
    dartCode: helloPhlutsDartCode,
    icon: 'waving_hand',
  ),
  const PlaygroundEntry(
    id: 'form_screen',
    title: 'Form Screen',
    description: 'Sign-in form with validation, fields and actions',
    json: formSample,
    dartCode: formDartCode,
    icon: 'login',
  ),
  ...componentEntries,
];

/// Rebuilds [json] as a plain `Map<String, dynamic>` tree.
///
/// The inline samples ([helloPhlutsSample], [formSample]) are `const` map
/// literals, so on the web (and VM) their nested maps are typed
/// `<dynamic, dynamic>` — Phluts's generated `fromJson` does
/// `json['child'] as Map<String, dynamic>`, which rejects them and surfaces as
/// a "Phluts Parse Error" (most visibly on buttons). Round-tripping through JSON
/// yields real `Map<String, dynamic>`/`List<dynamic>` nodes throughout.
Map<String, dynamic> asRenderableJson(Map<String, dynamic> json) =>
    jsonDecode(jsonEncode(json)) as Map<String, dynamic>;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          HomeState(
            jsonData: asRenderableJson(helloPhlutsSample),
            selectedEntry: playgroundEntries.first,
            dartCode: helloPhlutsDartCode,
            showCodeView: true,
          ),
        );

  /// Loads an entry's JSON and Dart sources (inline or from assets) and
  /// makes it the selected entry.
  Future<void> selectEntry(PlaygroundEntry entry) async {
    var json = entry.json;
    var dart = entry.dartCode;
    try {
      json ??= jsonDecode(await rootBundle.loadString(entry.jsonAsset!))
          as Map<String, dynamic>;
      dart ??= await rootBundle.loadString(entry.dartAsset!);
    } catch (_) {
      return;
    }
    emit(
      state.copyWith(
        selectedEntry: entry,
        jsonData: asRenderableJson(json),
        dartCode: dart,
        edited: false,
      ),
    );
  }

  void setQuery(String query) {
    emit(state.copyWith(query: query));
  }

  /// Replace the rendered JSON with the latest valid editor content.
  void updateJsonData(Map<String, dynamic> json) {
    emit(state.copyWith(jsonData: json));
  }

  void setEdited(bool edited) {
    if (state.edited != edited) {
      emit(state.copyWith(edited: edited));
    }
  }

  void toggleDarkMode() {
    emit(state.copyWith(darkMode: !state.darkMode));
  }

  void toggleCodeView() {
    emit(state.copyWith(showCodeView: !state.showCodeView));
  }

  void reduceScale() {
    emit(state.copyWith(scale: (state.scale - 0.1).clamp(0.3, 3.0)));
  }

  void increaseScale() {
    emit(state.copyWith(scale: (state.scale + 0.1).clamp(0.3, 3.0)));
  }

  void resetScale() {
    emit(state.copyWith(scale: 1.0));
  }

  void setCodeLanguage(CodeLanguage language) {
    emit(state.copyWith(codeLanguage: language));
  }

  void setView(PlaygroundView view) {
    emit(state.copyWith(view: view));
  }

  void setMobileDark(bool dark) {
    emit(state.copyWith(mobileDark: dark));
  }
}

const Map<String, dynamic> formSample = {
  "type": "scaffold",
  "backgroundColor": "#F4F6FA",
  "appBar": {"type": "appBar"},
  "body": {
    "type": "form",
    "child": {
      "type": "padding",
      "padding": {
        "left": 24,
        "right": 24,
      },
      "child": {
        "type": "column",
        "crossAxisAlignment": "start",
        "children": [
          {
            "type": "text",
            "data": "BettrDo Sign in",
            "style": {
              "fontSize": 24,
              "fontWeight": "w900",
              "height": 1.3,
            }
          },
          {
            "type": "sizedBox",
            "height": 24,
          },
          {
            "type": "textFormField",
            "id": "email",
            "autovalidateMode": "onUserInteraction",
            "validatorRules": [
              {
                "rule": "isEmail",
                "message": "Please enter a valid email",
              }
            ],
            "style": {
              "fontSize": 16,
              "fontWeight": "w400",
              "height": 1.5,
            },
            "decoration": {
              "hintText": "Email",
              "filled": true,
              "fillColor": "#FFFFFF",
              "border": {
                "type": "outlineInputBorder",
                "borderRadius": 8,
                "color": "#24151D29",
              }
            },
          },
          {
            "type": "sizedBox",
            "height": 16,
          },
          {
            "type": "textFormField",
            "autovalidateMode": "onUserInteraction",
            "validatorRules": [
              {
                "rule": "isPassword",
                "message": "Please enter a valid password",
              }
            ],
            "obscureText": true,
            "maxLines": 1,
            "style": {
              "fontSize": 16,
              "fontWeight": "w400",
              "height": 1.5,
            },
            "decoration": {
              "hintText": "Password",
              "filled": true,
              "fillColor": "#FFFFFF",
              "border": {
                "type": "outlineInputBorder",
                "borderRadius": 8,
                "color": "#24151D29",
              }
            },
          },
          {
            "type": "sizedBox",
            "height": 32,
          },
          {
            "type": "filledButton",
            "style": {
              "backgroundColor": "#151D29",
              "shape": {
                "borderRadius": 8,
              }
            },
            "onPressed": {},
            "child": {
              "type": "padding",
              "padding": {
                "top": 14,
                "bottom": 14,
                "left": 16,
                "right": 16,
              },
              "child": {
                "type": "row",
                "mainAxisAlignment": "spaceBetween",
                "children": [
                  {
                    "type": "text",
                    "data": "Proceed",
                  },
                  {
                    "type": "icon",
                    "iconType": "material",
                    "icon": "arrow_forward",
                  }
                ],
              },
            }
          },
          {
            "type": "sizedBox",
            "height": 16,
          },
          {
            "type": "align",
            "alignment": "center",
            "child": {
              "type": "textButton",
              "onPressed": {},
              "child": {
                "type": "text",
                "data": "Forgot password?",
                "style": {
                  "fontSize": 15,
                  "fontWeight": "w500",
                  "color": "#4745B4",
                }
              }
            }
          },
          {
            "type": "sizedBox",
            "height": 8,
          },
          {
            "type": "align",
            "alignment": "center",
            "child": {
              "type": "text",
              "data": "Don't have an account? ",
              "style": {
                "fontSize": 15,
                "fontWeight": "w400",
                "color": "#000000",
              },
              "children": [
                {
                  "data": "Sign Up for BettrDo",
                  "style": {
                    "fontSize": 15,
                    "fontWeight": "w500",
                    "color": "#4745B4",
                  }
                }
              ],
            },
          }
        ],
      },
    }
  }
};

const Map<String, dynamic> helloPhlutsSample = {
  "type": "scaffold",
  "body": {
    "type": "padding",
    "padding": {"top": 80, "left": 24, "right": 24, "bottom": 24},
    "child": {
      "type": "column",
      "crossAxisAlignment": "start",
      "children": [
        {
          "type": "container",
          "width": 56,
          "height": 56,
          "decoration": {
            "borderRadius": 12,
          },
          "clipBehavior": "hardEdge",
          "child": {
            "type": "image",
            "src":
                "https://pbs.twimg.com/profile_images/1886322776921042944/5Nveo4M2_400x400.png"
          }
        },
        {
          "type": "sizedBox",
          "height": 40,
        },
        {
          "type": "image",
          "src":
              "https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/Welcome%20to.png",
        },
        {
          "type": "text",
          "data": "Phluts Playground",
          "style": {
            "fontSize": 36,
            "fontWeight": "w600",
            "height": 1.3,
          }
        },
        {
          "type": "sizedBox",
          "height": 32,
        },
        {
          "type": "text",
          "data":
              "Phluts is a Server-Driven UI (SDUI) framework for Flutter. Phluts allows you to build beautiful cross-platform applications with JSON in real time.",
          "style": {
            "fontSize": 18,
            "fontWeight": "w400",
            "height": 1.5,
          }
        },
        {"type": "spacer"},
        {
          "type": "container",
          "height": 1,
          "widht": 1000,
          "color": "#20010810",
        },
        {
          "type": "sizedBox",
          "height": 24,
        },
        {
          "type": "text",
          "data": "Follow us for more updates:",
          "style": {
            "fontSize": 18,
            "fontWeight": "w400",
            "height": 1.5,
            "color": "#80010810"
          }
        },
        {
          "type": "sizedBox",
          "height": 20,
        },
        {
          "type": "column",
          "spacing": 20,
          "children": [
            {
              "type": "row",
              "spacing": 20,
              "children": [
                {
                  "type": "container",
                  "width": 44,
                  "height": 44,
                  "decoration": {
                    "borderRadius": 12,
                  },
                  "clipBehavior": "hardEdge",
                  "child": {
                    "type": "image",
                    "src":
                        "https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/github.png"
                  }
                },
                {
                  "type": "text",
                  "data": "github.com/PhlutsDev",
                  "style": {
                    "fontSize": 18,
                    "fontWeight": "w500",
                    "height": 1.5,
                  }
                }
              ],
            },
            {
              "type": "row",
              "spacing": 20,
              "children": [
                {
                  "type": "container",
                  "width": 44,
                  "height": 44,
                  "decoration": {
                    "borderRadius": 12,
                  },
                  "clipBehavior": "hardEdge",
                  "child": {
                    "type": "image",
                    "src":
                        "https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/x.png"
                  }
                },
                {
                  "type": "text",
                  "data": "x.com/phluts_dev",
                  "style": {
                    "fontSize": 18,
                    "fontWeight": "w500",
                    "height": 1.5,
                  }
                }
              ],
            },
            {
              "type": "row",
              "spacing": 20,
              "children": [
                {
                  "type": "container",
                  "width": 44,
                  "height": 44,
                  "decoration": {
                    "borderRadius": 12,
                  },
                  "clipBehavior": "hardEdge",
                  "child": {
                    "type": "image",
                    "src":
                        "https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/linkedin.png"
                  }
                },
                {
                  "type": "text",
                  "data": "/company/PhlutsDev",
                  "style": {
                    "fontSize": 18,
                    "fontWeight": "w500",
                    "height": 1.5,
                  }
                }
              ],
            }
          ],
        }
      ],
    }
  }
};

/// Phluts DSL source for the `hello_phluts` screen. `phluts build` compiles this
/// to the JSON in [helloPhlutsSample].
const String helloPhlutsDartCode = r'''
import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'hello_phluts')
PhlutsWidget helloPhluts() {
  return PhlutsScaffold(
    body: PhlutsPadding(
      padding: PhlutsEdgeInsets.only(top: 80, left: 24, right: 24, bottom: 24),
      child: PhlutsColumn(
        crossAxisAlignment: PhlutsCrossAxisAlignment.start,
        children: [
          PhlutsContainer(
            width: 56,
            height: 56,
            decoration: PhlutsBoxDecoration(
              borderRadius: PhlutsBorderRadius.all(12),
            ),
            clipBehavior: PhlutsClip.hardEdge,
            child: PhlutsImage(
              src:
                  'https://pbs.twimg.com/profile_images/1886322776921042944/5Nveo4M2_400x400.png',
            ),
          ),
          PhlutsSizedBox(height: 40),
          PhlutsImage(
            src:
                'https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/Welcome%20to.png',
          ),
          PhlutsText(
            data: 'Phluts Playground',
            style: PhlutsTextStyle(
              fontSize: 36,
              fontWeight: PhlutsFontWeight.w600,
              height: 1.3,
            ),
          ),
          PhlutsSizedBox(height: 32),
          PhlutsText(
            data:
                'Phluts is a Server-Driven UI (SDUI) framework for Flutter. Phluts allows you to build beautiful cross-platform applications with JSON in real time.',
            style: PhlutsTextStyle(
              fontSize: 18,
              fontWeight: PhlutsFontWeight.w400,
              height: 1.5,
            ),
          ),
          PhlutsSpacer(),
          PhlutsContainer(height: 1, width: 1000, color: '#20010810'),
          PhlutsSizedBox(height: 24),
          PhlutsText(
            data: 'Follow us for more updates:',
            style: PhlutsTextStyle(
              fontSize: 18,
              fontWeight: PhlutsFontWeight.w400,
              height: 1.5,
              color: '#80010810',
            ),
          ),
          PhlutsSizedBox(height: 20),
          PhlutsColumn(
            spacing: 20,
            children: [
              _socialRow(
                icon:
                    'https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/github.png',
                handle: 'github.com/PhlutsDev',
              ),
              _socialRow(
                icon:
                    'https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/x.png',
                handle: 'x.com/phluts_dev',
              ),
              _socialRow(
                icon:
                    'https://raw.githubusercontent.com/PhlutsDev/phluts/refs/heads/dev/assets/linkedin.png',
                handle: '/company/PhlutsDev',
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

/// The DSL is plain Dart, so repeated UI can be extracted into helpers.
PhlutsWidget _socialRow({required String icon, required String handle}) {
  return PhlutsRow(
    spacing: 20,
    children: [
      PhlutsContainer(
        width: 44,
        height: 44,
        decoration: PhlutsBoxDecoration(
          borderRadius: PhlutsBorderRadius.all(12),
        ),
        clipBehavior: PhlutsClip.hardEdge,
        child: PhlutsImage(src: icon),
      ),
      PhlutsText(
        data: handle,
        style: PhlutsTextStyle(
          fontSize: 18,
          fontWeight: PhlutsFontWeight.w500,
          height: 1.5,
        ),
      ),
    ],
  );
}
''';

/// Phluts DSL source for the `form_screen` screen. `phluts build` compiles this
/// to the JSON in [formSample].
const String formDartCode = r'''
import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'form_screen')
PhlutsWidget formScreen() {
  return PhlutsScaffold(
    backgroundColor: '#F4F6FA',
    appBar: PhlutsAppBar(),
    body: PhlutsForm(
      child: PhlutsPadding(
        padding: PhlutsEdgeInsets.only(left: 24, right: 24),
        child: PhlutsColumn(
          crossAxisAlignment: PhlutsCrossAxisAlignment.start,
          children: [
            PhlutsText(
              data: 'BettrDo Sign in',
              style: PhlutsTextStyle(
                fontSize: 24,
                fontWeight: PhlutsFontWeight.w900,
                height: 1.3,
              ),
            ),
            PhlutsSizedBox(height: 24),
            PhlutsTextFormField(
              id: 'email',
              autovalidateMode: PhlutsAutovalidateMode.onUserInteraction,
              validatorRules: [
                PhlutsFormFieldValidator(
                  rule: 'isEmail',
                  message: 'Please enter a valid email',
                ),
              ],
              style: PhlutsTextStyle(
                fontSize: 16,
                fontWeight: PhlutsFontWeight.w400,
                height: 1.5,
              ),
              decoration: _fieldDecoration(hintText: 'Email'),
            ),
            PhlutsSizedBox(height: 16),
            PhlutsTextFormField(
              autovalidateMode: PhlutsAutovalidateMode.onUserInteraction,
              validatorRules: [
                PhlutsFormFieldValidator(
                  rule: 'isPassword',
                  message: 'Please enter a valid password',
                ),
              ],
              obscureText: true,
              maxLines: 1,
              style: PhlutsTextStyle(
                fontSize: 16,
                fontWeight: PhlutsFontWeight.w400,
                height: 1.5,
              ),
              decoration: _fieldDecoration(hintText: 'Password'),
            ),
            PhlutsSizedBox(height: 32),
            PhlutsFilledButton(
              style: PhlutsButtonStyle(
                backgroundColor: '#151D29',
                shape: PhlutsRoundedRectangleBorder(
                  borderRadius: PhlutsBorderRadius.all(8),
                ),
              ),
              child: PhlutsPadding(
                padding: PhlutsEdgeInsets.only(
                  top: 14,
                  bottom: 14,
                  left: 16,
                  right: 16,
                ),
                child: PhlutsRow(
                  mainAxisAlignment: PhlutsMainAxisAlignment.spaceBetween,
                  children: [
                    PhlutsText(data: 'Proceed'),
                    PhlutsIcon(icon: 'arrow_forward'),
                  ],
                ),
              ),
            ),
            PhlutsSizedBox(height: 16),
            PhlutsAlign(
              alignment: PhlutsAlignmentDirectional.center,
              child: PhlutsTextButton(
                child: PhlutsText(
                  data: 'Forgot password?',
                  style: PhlutsTextStyle(
                    fontSize: 15,
                    fontWeight: PhlutsFontWeight.w500,
                    color: '#4745B4',
                  ),
                ),
              ),
            ),
            PhlutsSizedBox(height: 8),
            PhlutsAlign(
              alignment: PhlutsAlignmentDirectional.center,
              child: PhlutsText(
                data: "Don't have an account? ",
                style: PhlutsTextStyle(
                  fontSize: 15,
                  fontWeight: PhlutsFontWeight.w400,
                  color: '#000000',
                ),
                children: [
                  PhlutsTextSpan(
                    text: 'Sign Up for BettrDo',
                    style: PhlutsTextStyle(
                      fontSize: 15,
                      fontWeight: PhlutsFontWeight.w500,
                      color: '#4745B4',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

/// Shared outline decoration for the sign-in fields.
PhlutsInputDecoration _fieldDecoration({required String hintText}) {
  return PhlutsInputDecoration(
    hintText: hintText,
    filled: true,
    fillColor: '#FFFFFF',
    border: PhlutsInputBorder(
      type: PhlutsInputBorderType.outlineInputBorder,
      borderRadius: PhlutsBorderRadius.all(8),
      color: '#24151D29',
    ),
  );
}
''';
