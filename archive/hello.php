<!DOCTYPE html>
<html>
<head>
    <title>Simple PHP Example</title>
</head>
<body>
  <nav class="bg-gray-800">
    <ul class="flex">
      <li class="relative group">
        <a href="#" class="block py-2 px-4 text-white">Home</a>
      </li>
      <li class="relative group">
        <a href="#" class="block py-2 px-4 text-white">About</a>
        <ul class="absolute hidden bg-gray-800 group-hover:block">
          <li><a href="#" class="block py-2 px-4 text-white">Our Team</a></li>
          <li><a href="#" class="block py-2 px-4 text-white">Our Story</a></li>
        </ul>
      </li>
    </ul>
  </nav> <h1>Welcome to my simple PHP page</h1>
    <?php
    // PHP code to display the current date
    echo "Today's date is " . date("Y-m-d") . "<br>";
    ?>

</body>
</html>
