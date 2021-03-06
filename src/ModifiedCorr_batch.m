function mCorrResults = ModifiedCorr_batch(result, resultTr, searchRadius)
[nImg, b, c] = size(result);
[nImgTr, ~, ~] = size(resultTr);

mCorrResults = zeros (nImg,nImgTr);
testImage = zeros (b,c);
trainImage = zeros (b,c);
for i=1:nImg
    i
    for j=1:nImgTr
        testImage(:,:) = result(i,:,:);
        trainImage(:,:) = resultTr(j,:,:);
        mCorrResults (i, j) = mCorr( testImage, trainImage, searchRadius );
    end
end