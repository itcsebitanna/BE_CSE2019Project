function O = PerformAWB(I, p)

if nargin == 1
    p = 96; 
end

p = 100-p; % always the top % is considered
szI = size(I);

if(length(szI) < 3)
    error ('Input image should be in RGB color space')
end

    [iR, iG, iB] = EstimateIlluminantRGB(I, p);    
    

    iEstm = [iR, iG, iB];
    CCT_Estm = EstimateCCT(iEstm);

   
    iRef = [iG, iG, iG];
    CCT_Ref = EstimateCCT(iRef);

   
    K = ComputeGainFactorMatrix(iEstm);    
    T = ComputeOffsetMatrix(K, CCT_Estm, CCT_Ref);

   
    
    O = PerformWhiteBalanceCorrection(I, K, T);
    

end

function [Rc, Gc, Bc] = EstimateIlluminantRGB(I, p)

    R = I(:,:,1);
    G = I(:,:,2);
    B = I(:,:,3);

   
    Rc = EstimateIlluminantGrey(R, p);
    Gc = EstimateIlluminantGrey(G, p);
    Bc = EstimateIlluminantGrey(B, p);
end


function Ic = EstimateIlluminantGrey(I, p)
    Ic = 0;
    
    L = 256;
    sz = size(I);

    pxlTh = (p*sz(1)*sz(2))/100;    
    histI = imhist(I);

    Imin = min(min(I));
    Imax = max(max(I));

   
    for k=Imin:(Imax-1)
    
   
        j = double(k+1);
        cnt1 = sum(histI(j:L));

       
        j = j+1;
        cnt2 = sum(histI(j:L));

        if( (cnt1 > pxlTh) && (cnt2 < pxlTh) )
            Ic = k;
             break;
        end
    end    
end


function CCT = EstimateCCT(iEstm)

    A0 = -949.86315;
    A1 = 6253.80338;
    A2 = 28.70599;
    A3 = 0.00004;

    t1 = 0.92159;
    t2 = 0.20039;
    t3 = 0.07125;

    xe = 0.3366;
    ye = 0.1735;

   
    XYZ_Conv_matrix = [ 0.4124 0.3576 0.1805; 
                        0.2126 0.7152 0.0722; 
                        0.0193 0.152 0.9505];
    
    XYZ = XYZ_Conv_matrix * double(iEstm');         
    
    x = XYZ(1) / (sum(XYZ));
    y = XYZ(2) / (sum(XYZ));

    H = -((x-xe)/(y-ye));

    CCT = A0 + (A1*exp(H/t1)) + (A2*exp(H/t2)) + (A3*exp(H/t3));

end


function [K] = ComputeGainFactorMatrix(iEstm)

    iEstm = double(iEstm);

    iEstm_R = iEstm(1);
    iEstm_G = iEstm(2);
    iEstm_B = iEstm(3);

    iRef_R = iEstm_G; 
    iRef_G = iEstm_G; 
    iRef_B = iEstm_G;

    Kr = iRef_R / iEstm_R; 
    Kg = iRef_G / iEstm_G;
    Kb = iRef_B / iEstm_B;

    K = [Kr, 0, 0;
          0, Kg, 0;
          0, 0, Kb];

end

function T = ComputeOffsetMatrix(K, CCT_Estm, CCT_Ref)

    A = 100;

    Kr = K(1,1);
    Kb = K(3,3);

    Tr = max(1, (CCT_Estm - CCT_Ref)/A ) * (Kr-1);
    Tg = 0;
    Tb = max(1, (CCT_Ref - CCT_Estm)/A ) * (Kb-1);

    T = [Tr; Tg; Tb];

end

function O = PerformWhiteBalanceCorrection(I, K, T)

    sz = size(I);
    O = uint8(zeros(sz));
  
    for x = 1:sz(1)
        for y = 1:sz(2)
            Fxy = double([I(x,y,1), I(x,y,2), I(x,y,3)]');
            FWB = K * Fxy + T;
            
            for p=1:3
                O(x,y,p) = uint8(FWB(p));
            end
        end    
    end

end

