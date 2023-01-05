class TaskEntity {
  String name;
  int priority;

  TaskEntity(this.name, this.priority);

  TaskEntity.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        priority = json['priority'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'priority': priority,
      };
}
