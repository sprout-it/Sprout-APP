import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: SettingsScreen(),
    );
  }
}

class LanguagesScreen extends StatefulWidget {
  @override
  _LanguagesScreenState createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  int languageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Languages')),
      body: SettingsList(
        sections: [
          SettingsSection(tiles: [
            SettingsTile(
              title: "English",
              trailing: trailingWidget(0),
              onPressed: (BuildContext context) {
                changeLanguage(0);
              },
            ),
            SettingsTile(
              title: "Spanish",
              trailing: trailingWidget(1),
              onPressed: (BuildContext context) {
                changeLanguage(1);
              },
            ),
            SettingsTile(
              title: "Chinese",
              trailing: trailingWidget(2),
              onPressed: (BuildContext context) {
                changeLanguage(2);
              },
            ),
            SettingsTile(
              title: "German",
              trailing: trailingWidget(3),
              onPressed: (BuildContext context) {
                changeLanguage(3);
              },
            ),
          ]),
        ],
      ),
    );
  }

  Widget trailingWidget(int index) {
    return (languageIndex == index)
        ? Icon(Icons.check, color: Colors.blue)
        : Icon(null);
  }

  void changeLanguage(int index) {
    setState(() {
      languageIndex = index;
    });
  }
}

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings UI')),
      body: buildSettingsList(),
    );
  }

  Widget buildSettingsList() {
    return SettingsList(
      sections: [
        SettingsSection(
          title: 'Common',
          tiles: [
            SettingsTile(
              title: 'Language',
              subtitle: 'English',
              leading: Icon(Icons.language),
              onPressed: (context) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => LanguagesScreen(),
                ));
              },
            ),
            SettingsTile(
              title: 'Environment',
              subtitle: 'Production',
              leading: Icon(Icons.cloud_queue),
            ),
          ],
        ),
        SettingsSection(
          title: 'Account',
          tiles: [
            SettingsTile(title: 'Phone number', leading: Icon(Icons.phone)),
            SettingsTile(title: 'Email', leading: Icon(Icons.email)),
            SettingsTile(title: 'Sign out', leading: Icon(Icons.exit_to_app)),
          ],
        ),
        SettingsSection(
          title: 'Security',
          tiles: [
            SettingsTile.switchTile(
              title: 'Lock app in background',
              leading: Icon(Icons.phonelink_lock),
              switchValue: lockInBackground,
              onToggle: (bool value) {
                setState(() {
                  lockInBackground = value;
                  notificationsEnabled = value;
                });
              },
            ),
            SettingsTile.switchTile(
                title: 'Use fingerprint',
                subtitle: 'Allow application to access stored fingerprint IDs.',
                leading: Icon(Icons.fingerprint),
                onToggle: (bool value) {},
                switchValue: false),
            SettingsTile.switchTile(
              title: 'Change password',
              leading: Icon(Icons.lock),
              switchValue: true,
              onToggle: (bool value) {},
            ),
            SettingsTile.switchTile(
              title: 'Enable Notifications',
              enabled: notificationsEnabled,
              leading: Icon(Icons.notifications_active),
              switchValue: true,
              onToggle: (value) {},
            ),
          ],
        ),
        SettingsSection(
          title: 'Misc',
          tiles: [
            SettingsTile(
                title: 'Terms of Service', leading: Icon(Icons.description)),
            SettingsTile(
                title: 'Open source licenses',
                leading: Icon(Icons.collections_bookmark)),
          ],
        ),
        CustomSection(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22, bottom: 8),
                child: Image.asset(
                  'assets/settings.png',
                  height: 50,
                  width: 50,
                  color: Color(0xFF777777),
                ),
              ),
              Text(
                'Version: 2.4.0 (287)',
                style: TextStyle(color: Color(0xFF777777)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
