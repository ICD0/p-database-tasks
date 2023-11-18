-- tables

-- SCHEMA AUTH

-- Table: users
CREATE TABLE auth.users
(
    user_id  uuid         NOT NULL,
    username varchar(50) NOT NULL UNIQUE,
    email    varchar(50) NOT NULL,
    CONSTRAINT users_pk PRIMARY KEY (user_id)
);

-- Table: user_credentials
CREATE TABLE auth.user_credentials
(
    credentials_id uuid          NOT NULL,
    hash           varchar(255) NOT NULL,
    salt           varchar(64)  NOT NULL,
    users_user_id  int          NOT NULL,
    CONSTRAINT user_credentials_pk PRIMARY KEY (credentials_id)
);

-- END SCHEMA AUTH


-- SCHEMA APP

-- Table: workspaces
CREATE TABLE app.workspaces
(
    workspace_id uuid         NOT NULL,
    name         varchar(50) NOT NULL,
    CONSTRAINT workspaces_pk PRIMARY KEY (workspace_id)
);


-- Table: boards
CREATE TABLE app.boards
(
    board_id                                uuid         NOT NULL,
    name                                    varchar(30) NOT NULL,
    bg_color                                varchar(7)  NOT NULL,
    workspaces_workspace_id                 int         NOT NULL,
    app_permission_level_permision_level_id int         NOT NULL,
    CONSTRAINT boards_pk PRIMARY KEY (board_id)
);

-- Table: lists
CREATE TABLE app.lists
(
    list_id         uuid         NOT NULL,
    list_name       varchar(30) NOT NULL,
    boards_board_id int         NOT NULL,
    CONSTRAINT lists_pk PRIMARY KEY (list_id)
);

-- Table: tasks
CREATE TABLE app.tasks
(
    task_id          uuid          NOT NULL,
    lists_list_id    uuid          NOT NULL,
    task_name        varchar(30)  NOT NULL,
    task_description varchar(500) NOT NULL,
    due_date         date         NOT NULL,
    task_position    int          NOT NULL,
    finished         boolean      NOT NULL,
    overdue          boolean      NOT NULL,
    CONSTRAINT tasks_pk PRIMARY KEY (task_id)
);


-- Table: user_workspaces
CREATE TABLE app.user_workspaces
(
    Workspaces_workspace_id uuid NOT NULL,
    users_user_id           uuid NOT NULL,
    roles_roles_id          int NOT NULL,
    CONSTRAINT user_workspaces_pk PRIMARY KEY (Workspaces_workspace_id, users_user_id)
);

-- Table: task_members
CREATE TABLE app.task_members
(
    users_user_id uuid NOT NULL,
    tasks_task_id int NOT NULL,
    CONSTRAINT task_members_pk PRIMARY KEY (users_user_id, tasks_task_id)
);


-- Table: label_task
CREATE TABLE app.label_task
(
    tasks_task_id   uuid NOT NULL,
    labels_label_id int NOT NULL,
    CONSTRAINT label_task_pk PRIMARY KEY (tasks_task_id, labels_label_id)
);

-- Table: labels
CREATE TABLE labels
(
    label_id int         NOT NULL,
    name     varchar(30) NOT NULL,
    color    varchar(7)  NOT NULL,
    CONSTRAINT labels_pk PRIMARY KEY (label_id)
);

-- END SCHEMA APP

-- SCHEMA AUDIT

-- Table: History
CREATE TABLE History
(
    history_id     int         NOT NULL,
    updated_at     timestamp   NOT NULL,
    action_type    varchar(30) NOT NULL,
    object_type    varchar(30) NOT NULL,
    object_owner   int         NOT NULL,
    action_user_id int         NOT NULL,
    CONSTRAINT History_pk PRIMARY KEY (history_id)
);

-- END SCHEMA AUDIT

-- SCHEMA ACN

-- Table: modules
CREATE TABLE modules
(
    module_id int         NOT NULL,
    name      varchar(30) NOT NULL,
    CONSTRAINT modules_pk PRIMARY KEY (module_id)
);

-- Table: permissions
CREATE TABLE permissions
(
    permission_id     int         NOT NULL,
    name              varchar(30) NOT NULL,
    modules_module_id int         NOT NULL,
    CONSTRAINT permissions_pk PRIMARY KEY (permission_id)
);

-- Table: role_permissions
CREATE TABLE role_permissions
(
    permissions_permission_id int NOT NULL,
    roles_roles_id            int NOT NULL,
    CONSTRAINT role_permissions_pk PRIMARY KEY (permissions_permission_id, roles_roles_id)
);

-- Table: roles
CREATE TABLE roles
(
    role_id          int         NOT NULL,
    role_name        varchar(30) NOT NULL,
    role_description varchar(50) NOT NULL,
    CONSTRAINT roles_id PRIMARY KEY (role_id)
);

-- Table: app_permission_level
CREATE TABLE app_permission_level
(
    permission_level_id int         NOT NULL,
    permission_name     varchar(30) NOT NULL,
    CONSTRAINT app_permission_level_pk PRIMARY KEY (permission_level_id)
);

-- END SCHEMA ACN



-- foreign keys
-- Reference: boards_app_permission_level (table: boards)

ALTER TABLE boards
    ADD CONSTRAINT boards_app_permission_level
        FOREIGN KEY (app_permission_level_permision_level_id)
            REFERENCES app_permission_level (permission_level_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: boards_workspaces (table: boards)
ALTER TABLE boards
    ADD CONSTRAINT boards_workspaces
        FOREIGN KEY (workspaces_workspace_id)
            REFERENCES workspaces (workspace_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: label_task_labels (table: label_task)
ALTER TABLE label_task
    ADD CONSTRAINT label_task_labels
        FOREIGN KEY (labels_label_id)
            REFERENCES labels (label_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: label_task_tasks (table: label_task)
ALTER TABLE label_task
    ADD CONSTRAINT label_task_tasks
        FOREIGN KEY (tasks_task_id)
            REFERENCES tasks (task_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: lists_boards (table: lists)
ALTER TABLE lists
    ADD CONSTRAINT lists_boards
        FOREIGN KEY (boards_board_id)
            REFERENCES boards (board_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: permissions_modules (table: permissions)
ALTER TABLE permissions
    ADD CONSTRAINT permissions_modules
        FOREIGN KEY (modules_module_id)
            REFERENCES modules (module_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: role_permissions_permissions (table: role_permissions)
ALTER TABLE role_permissions
    ADD CONSTRAINT role_permissions_permissions
        FOREIGN KEY (permissions_permission_id)
            REFERENCES permissions (permission_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: role_permissions_roles (table: role_permissions)
ALTER TABLE role_permissions
    ADD CONSTRAINT role_permissions_roles
        FOREIGN KEY (roles_roles_id)
            REFERENCES roles (role_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: task_menbers_tasks (table: task_members)
ALTER TABLE task_members
    ADD CONSTRAINT task_menbers_tasks
        FOREIGN KEY (tasks_task_id)
            REFERENCES tasks (task_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: task_menbers_users (table: task_members)
ALTER TABLE task_members
    ADD CONSTRAINT task_menbers_users
        FOREIGN KEY (users_user_id)
            REFERENCES users (user_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: tasks_lists (table: tasks)
ALTER TABLE tasks
    ADD CONSTRAINT tasks_lists
        FOREIGN KEY (lists_list_id)
            REFERENCES lists (list_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: user_credentials_users (table: user_credentials)
ALTER TABLE user_credentials
    ADD CONSTRAINT user_credentials_users
        FOREIGN KEY (users_user_id)
            REFERENCES users (user_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: user_workspaces_Workspaces (table: user_workspaces)
ALTER TABLE user_workspaces
    ADD CONSTRAINT user_workspaces_Workspaces
        FOREIGN KEY (Workspaces_workspace_id)
            REFERENCES workspaces (workspace_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: user_workspaces_roles (table: user_workspaces)
ALTER TABLE user_workspaces
    ADD CONSTRAINT user_workspaces_roles
        FOREIGN KEY (roles_roles_id)
            REFERENCES roles (role_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;

-- Reference: user_workspaces_users (table: user_workspaces)
ALTER TABLE user_workspaces
    ADD CONSTRAINT user_workspaces_users
        FOREIGN KEY (users_user_id)
            REFERENCES users (user_id)
            NOT DEFERRABLE
                INITIALLY IMMEDIATE
;
