polygraphy run /workspace/encoder-new.onnx \
--onnxrt --trt \
--workspace 5000 \
--atol 1e-3  --rtol 1e-3 \
--verbose \
--trt-min-shapes speech:[1,1,80] speech_lengths:[1] \
--trt-opt-shapes speech:[64,64,80] speech_lengths:[64] \
--trt-max-shapes speech:[256,256,80] speech_lengths:[256] \
--input-shapes speech:[64,64,80] speech_lengths:[64] \
> result-01.txt
