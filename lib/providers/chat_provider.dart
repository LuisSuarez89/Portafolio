import 'package:flutter/foundation.dart';

class ChatMessage {
  ChatMessage(this.role, this.content);

  final String role;
  final String content;

  Map<String, String> toJson() => {'role': role, 'content': content};
}

class ChatProvider extends ChangeNotifier {
  final List<ChatMessage> _messages = <ChatMessage>[];

  bool open = false;
  bool typing = false;
  bool suggestionsVisible = true;

  List<ChatMessage> get messages => List.unmodifiable(_messages);
  bool get showWelcome => _messages.isEmpty;

  void openChat() {
    open = true;
    notifyListeners();
  }

  void closeChat() {
    open = false;
    notifyListeners();
  }

  void addUserMessage(String content) {
    _messages.add(ChatMessage('user', content));
    suggestionsVisible = false;
    typing = true;
    notifyListeners();
  }

  void addAssistantMessage(String content) {
    _messages.add(ChatMessage('assistant', content));
    notifyListeners();
  }

  void setTyping(bool value) {
    typing = value;
    notifyListeners();
  }

  void hideSuggestions() {
    suggestionsVisible = false;
    notifyListeners();
  }
}
