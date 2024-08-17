import 'package:flutter/material.dart';
import 'package:imense_task/helpers/icon_constants.dart';
import 'package:imense_task/models/status_model.dart';

List<Status> status = [
    Status(
        title: 'My observations',
        icon: IconsConstants.observation,
        color: const Color(0xffC1E2F4),
        value: '15'),
    Status(
        title: 'Pending',
        icon: IconsConstants.pause,
        color: const Color(0xffC1E2F4),
        value: '4'),
    Status(
        title: 'Resolved',
        icon: IconsConstants.done,
        color: const Color(0xffBFFFC9),
        value: '1'),
    Status(
        title: 'Progress',
        icon: IconsConstants.inprogress,
        color: const Color(0xffFFEDAA),
        value: '2'),
    Status(
        title: 'Close',
        icon: IconsConstants.hide,
        color: const Color(0xffE9E9E9),
        value: '1'),
  ];