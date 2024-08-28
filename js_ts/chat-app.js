document.getElementById('send-button').addEventListener('click', function() {
  var messageInput = document.getElementById('message-input');
  var message = messageInput.value;
  
  if (message) {
    var chatMessages = document.querySelector('.chat-messages');
    var newMessage = document.createElement('div');
    newMessage.className = 'message';
    newMessage.textContent = message;
    chatMessages.appendChild(newMessage);
    messageInput.value = '';
    
    // Scroll to the bottom of the chat area
    chatMessages.scrollTop = chatMessages.scrollHeight;
  }
});
