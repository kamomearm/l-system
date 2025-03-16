module Lib
    ( moveFoward
    , Pos
    ) where

-- 方針
-- A : A + A - - A + Aの形で辞書型を作る
-- 与えられた式の展開 String -> String
-- | 辞書型にあるなら、展開
-- | ないなら、そのまま
-- 文字列を関数の連続へとパースする
type Pos = (Float, Float)

addPos :: Pos -> Pos -> Pos
(x, y) `addPos` (a, b) = (x + a, y + b)

-- 前進の移動量は1とする
foward :: Pos
foward = (1, 0)

-- 回転量は acc * thetaで表すことができる
-- accはパースするときに、+がでたら+1、-がでたら-1する
-- (1,0)のベクトルを回転させ、今いるベクトルの終点に移動させることで、次のベクトルの終点の座標を得る
moveFoward :: Int -> Float -> Pos -> Pos
moveFoward acc angle cxy = (x', y')
    where
        t = angle * fromIntegral acc
        x = cos t * fst foward
        y = sin t * fst foward 
        (x', y') = (x, y) `addPos` cxy
