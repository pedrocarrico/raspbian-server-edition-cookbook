Raspberry Pi Server edition cookbook
=====================

Requirements
------------
This cookbook only works on ubuntu and raspbian.
I'll try to maintain compatibility with ubuntu for testing purposes (with kitchen and serverspec).

Usage
-----
#### server_pi::default
e.g.
Just include `raspberry_pi` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[server_pi]"
  ]
}
```

License and Authors
-------------------
Authors: Pedro Carriço
