import 'package:flutter/material.dart';
import 'package:sih2/Community/template_class.dart';

class Community extends StatefulWidget {
  final MediaQueryData sz;
  Community({required this.sz, Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostPage(qd: widget.sz,)
    );
  }
}
