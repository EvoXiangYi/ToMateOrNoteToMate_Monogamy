function [matrixWives] = getMarried(femalesIdx, femalesFitness, malesIdx, malesFitness)
	matrixWives=[];
	while and(length(femalesIdx)>0, length(malesIdx)>0)
		chosenFemaleIdx = myID_parent(femalesFitness);
		wife_idx = femalesIdx(chosenFemaleIdx);
		wife_fitness = femalesFitness(chosenFemaleIdx);
		
		chosenMaleIdx = myID_parent(malesFitness);
		wife_husbandIdx = malesIdx(chosenMaleIdx);
		matrixWives=[matrixWives,[wife_idx; wife_fitness; wife_husbandIdx]];
		
		femalesIdx(chosenFemaleIdx)=[];
		femalesFitness(chosenFemaleIdx)=[];
		malesIdx(chosenMaleIdx)=[];
		malesFitness(chosenMaleIdx)=[];
	end
end


%%%%%%%%%%%%%%%%%%%%%% Test the function %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%femalesIdx=[2,4,6,8,10];
%femalesFitness=[1,2,3,4,5];
%malesIdx=[1,3,5,9];
%malesFitness=[2,4,6,8];
%matrixWives = getMarried(femalesIdx, femalesFitness, malesIdx, malesFitness)