create role moderator;
grant create session to moderator;
grant create view to moderator;

-- Ajouter l'accès aux procédures ici
grant execute on admin.add_user to moderator;

grant delete on Post to moderator;
grant delete on Survey to moderator;
grant update (date_end, ban_reason) on Users to moderator;

-- Moderateurs test, normalement les moderateurs doivent
-- être crées par l'admin.
create user modo1 identified by peche;
grant moderator to modo1;