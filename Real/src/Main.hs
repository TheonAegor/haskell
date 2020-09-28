type UserId = Integer
type Prefix = String

obtainLogin :: UserId -> (Prefix -> String)
obtainLogin userId = 
    loginStorage "denis"
    where loginStorage login prefix = prefix ++ ": " ++ login
--Здесь мы, на основании полученного извне идентификатора пользователя,
--откуда-то извлекаем логин и сразу же прячем его в λ-функцию, тут же нами и созданную. В результате функция obtainLogin возвращает частично
--применённую функцию, которую мы вторично применяем к строке-пре­
--фиксу — и в результате на выходе мы получаем готовый результат:

main =
    let userId = 1234
    in
    putStrLn ((obtainLogin userId) "My login")
