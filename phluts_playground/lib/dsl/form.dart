import 'package:phluts_core/phluts_core.dart';

@PhlutsScreen(screenName: 'form')
PhlutsWidget formExample() {
  return PhlutsScaffold(
    appBar: PhlutsAppBar(title: PhlutsText(data: 'Sign in Form')),
    body: PhlutsPadding(
      padding: PhlutsEdgeInsets.all(12),
      child: PhlutsSingleChildScrollView(
        child: PhlutsForm(
          child: PhlutsColumn(
            children: [
              PhlutsTextFormField(
                id: 'username',
                initialValue: 'kminchelle',
                keyboardType: PhlutsTextInputType.text,
                textInputAction: PhlutsTextInputAction.next,
                maxLines: 1,
                decoration: PhlutsInputDecoration(hintText: 'Username'),
                validatorRules: [
                  PhlutsFormFieldValidator(
                    rule: 'isAlphanumeric',
                    message: 'Letters and numbers only',
                  ),
                  PhlutsFormFieldValidator(
                    rule: 'isLength',
                    options: {'min': 8, 'max': 20},
                    message: 'Username must be 8-20 characters',
                  ),
                ],
              ),
              PhlutsTextFormField(
                id: 'password',
                keyboardType: PhlutsTextInputType.visiblePassword,
                initialValue: '0lelplR',
                textInputAction: PhlutsTextInputAction.done,
                maxLines: 1,
                decoration: PhlutsInputDecoration(hintText: 'Password'),
                autovalidateMode: PhlutsAutovalidateMode.onUserInteraction,
                validatorRules: [
                  PhlutsFormFieldValidator(
                    rule: 'isLength',
                    options: {'min': 1},
                    message: 'Password is required',
                  ),
                ],
              ),
              PhlutsSizedBox(height: 24),
              PhlutsElevatedButton(
                child: PhlutsText(data: 'Sign in'),
                style: PhlutsButtonStyle(
                  backgroundColor: 'primary',
                  foregroundColor: '#ffffff',
                ),
                onPressed: PhlutsFormValidate(
                  isValid: PhlutsNetworkRequest(
                    url: 'https://dummyjson.com/auth/login',
                    method: Method.post,
                    contentType: 'application/json',
                    body: {
                      'username': {
                        'actionType': 'getFormValue',
                        'id': 'username',
                      },
                      'password': {
                        'actionType': 'getFormValue',
                        'id': 'password',
                      },
                    },
                    results: [
                      PhlutsNetworkResult(
                        statusCode: 200,
                        action: {
                          'actionType': 'showDialog',
                          'widget': {
                            'type': 'alertDialog',
                            'title': {'type': 'text', 'data': 'Successful'},
                          },
                        },
                      ),
                      PhlutsNetworkResult(
                        statusCode: 400,
                        action: {
                          'actionType': 'showDialog',
                          'widget': {
                            'type': 'alertDialog',
                            'title': {'type': 'text', 'data': 'Error'},
                          },
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
