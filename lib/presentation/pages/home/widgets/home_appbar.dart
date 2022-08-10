// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/profile/profile_bloc.dart';
import '../../../utils/extensions.dart';
import '../../../widgets/header_view.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context
        .watch<ProfileBloc>()
        .state
        .whenOrNull(loadSuccess: (user) => user);
    return AppBar(
      title: HeaderView(
        title: Text(
          'Hello, ${user != null ? user.name.capitalizeFirstLetter() : ''}',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: user != null
            ? Text(
                '@${user.username}',
                style: const TextStyle(fontSize: 16),
              )
            : const SizedBox(),
      ),
      actions: [
        _CircleAvatar(image: user?.image),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CircleAvatar extends StatelessWidget {
  final String? image;
  const _CircleAvatar({
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.secondary,
        image: DecorationImage(
          image: (image != null
              ? NetworkImage(image!)
              : const AssetImage('assets/images/profile.png')) as ImageProvider,
        ),
      ),
    );
  }
}
