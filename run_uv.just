set unstable

set script-interpreter := ['uv', 'run', '--script']

[script]
square:
  x = int(input("Enter a number: "))
  print("Square of", x, "is", x ** 2)

[script]
ls option="":
  # /// script
  # requires-python = ">=3.11"
  # dependencies=["sh"]
  # ///
  import sh
  l = sh.ls.bake("{{option}}" or None)
  print(l(), end='')
	