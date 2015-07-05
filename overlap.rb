def overlap(rect1, rect2)
  #ensure corners are bottom-left and top-right
  xmin1 = [rect1[0][0], rect1[1][0]].min
  xmax1 = [rect1[0][0], rect1[1][0]].max
  ymin1 = [rect1[0][1], rect1[1][1]].min
  ymax1 = [rect1[0][1], rect1[1][1]].max
  #same for rect2
  xmin2 = [rect2[0][0], rect2[1][0]].min
  xmax2 = [rect2[0][0], rect2[1][0]].max
  ymin2 = [rect2[0][1], rect2[1][1]].min
  ymax2 = [rect2[0][1], rect2[1][1]].max

  x_overlap = [0, xmax1 - xmin2].max
  y_overlap = [0, ymax1 - ymin2].max
  return false if x_overlap * y_overlap == 0
  return true
end
