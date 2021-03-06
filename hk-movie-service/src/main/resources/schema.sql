-- movie
DROP TABLE IF EXISTS movie;
CREATE TABLE movie (
  id          BIGINT GENERATED BY DEFAULT AS IDENTITY,
  movie_name  VARCHAR(50) NOT NULL
  COMMENT '电影名称',
  up_time     VARCHAR(10) NOT NULL
  COMMENT '上映时间',
  time_length VARCHAR(4) COMMENT '电影时长',
  PRIMARY KEY (id)
);

-- 用户与电影关联
DROP TABLE IF EXISTS movie_order;

CREATE TABLE movie_order (
  id       BIGINT GENERATED BY DEFAULT AS IDENTITY,
  movie_id BIGINT NOT NULL,
  user_id  BIGINT NOT NULL,
  PRIMARY KEY (id)
);

