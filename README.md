# README

```bash
bundle
rake db:create db:migrate db:seed
rails s
```
затем открываем `localhost:3000/graphiql`

### Примеры запросов.

Запрос первого юзера, его постов, комментов к постам с указанием автора
```
{
  user(id: 1) {
    name
    posts {
      title
      body
      comments {
        id
        body
        user {
          name
        }
      }
    }
  }
}
```

Вывод всех юзеров
```
{
  users{
    name
  }
}
```

Все посты и комменты к ним с указанием автора
```
{
  posts{
    body
    comments{
      body
      user{
        name
      }
    }
  }
}
```