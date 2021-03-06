#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=1 python examples/posCRFTagger.py --mode LSTM --num_epochs 200 --batch_size 16 --hidden_size 256 \
 --char_dim 30 --num_filters 30 \
 --learning_rate 0.01 --decay_rate 0.05 --schedule 5 --gamma 0.0 \
 --dropout std --p 0.5 --unk_replace 0.0 --bigram \
 --train "data/POS-penn/wsj/split1/wsj1.train.original" --dev "data/POS-penn/wsj/split1/wsj1.dev.original" --test "data/POS-penn/wsj/split1/wsj1.test.original"
