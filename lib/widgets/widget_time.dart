String getGreeting() {
  var hour = DateTime.now().hour;
  if (hour >= 0 && hour < 12) {
    return 'Good morning,';
 

