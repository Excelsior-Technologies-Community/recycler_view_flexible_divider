# 🧩 Recycler View Flexible Divider

Recycler View Flexible Divider is a powerful Flutter utility that brings Android RecyclerView-style ItemDecoration to Flutter.

It provides flexible dividers, spacing, and separators for ListView, GridView, and SliverList without using ListView.separated.

It helps developers avoid repetitive divider code and gives full control over spacing, indentation, and visibility of first/last separators.

----------------------------------

## ✨ Feature Preview

🔹 Custom divider thickness    
🔹 Top & bottom spacing    
🔹 Start & end indent (like WhatsApp chat)    
🔹 First item divider    
🔹 Last item divider     
🔹 Builder based (Lazy rendering)     
🔹 Works like RecyclerView ItemDecoration    
🔹 Clean Material UI    
🔹 Supports large lists efficiently    
🔹 No performance impact 

-------------------------------------

📸 Preview



https://github.com/user-attachments/assets/cb14cdf3-1418-4abc-b1ea-8e4835ec2cdf


-------------------------------------

📦 Installation

Add dependency in your pubspec.yaml:
```
dependencies:
  recycler_view_flexible_divider:
    git:
      url: https://github.com/Excelsior-Technologies-Community/recycler_view_flexible_divider/edit/stage

```
then run:
```
flutter pub get
```
----------------------------------

## 📁 File Structure
```
recycler_view_flexible_divider/
│
├─ lib/
│   ├─ recycler_view_flexible_divider.dart   # Main library export file
│   │
│   └─ src/
│       ├─ flexible_divider.dart             # Divider configuration model
│       ├─ flexible_divider_builder.dart     # ListView divider engine (core logic)
│       ├─ flexible_grid_divider.dart        # GridView spacing & layout helper
│       └─ flexible_sliver_divider.dart      # SliverList divider support
│
├─ example/
│   └─ main.dart                             # Example app demonstrating usage
│
├─ pubspec.yaml
├─ README.md
└─ LICENSE
```

-----------------------------------

🚀 Usage
```
import 'package:flutter/material.dart';
import 'package:recycler_view_flexible_divider/recycler_view_flexible_divider.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flexible Divider Demo")),

      body: FlexibleDividerListView(
        itemCount: 20,

        divider: const FlexibleDivider(
          thickness: 2,
          color: Colors.teal,
          startIndent: 16,
          endIndent: 16,
          topSpacing: 8,
          bottomSpacing: 8,
          showFirstDivider: true,
          showLastDivider: true,
        ),

        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text("${index + 1}")),
            title: Text("User $index"),
            subtitle: const Text("Flutter Developer"),
          );
        },
      ),
    );
  }
}
```

----------------------------------------

## ⚙️ FlexibleDivider Properties

| Property           | Type   | Required | Default       | Description                    |
| ------------------ | ------ | -------- | ------------- | ------------------------------ |
| `thickness`        | double | No       | `1`           | Divider line height            |
| `topSpacing`       | double | No       | `4`           | Space above divider            |
| `bottomSpacing`    | double | No       | `4`           | Space below divider            |
| `startIndent`      | double | No       | `0`           | Left padding of divider        |
| `endIndent`        | double | No       | `0`           | Right padding of divider       |
| `color`            | Color  | No       | `Colors.grey` | Divider color                  |
| `showFirstDivider` | bool   | No       | `false`       | Show divider before first item |
| `showLastDivider`  | bool   | No       | `false`       | Show divider after last item   |

------------------------------------

## 📝 License (MIT)
```
Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this recycler_view_flexible_divider library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT...
```





