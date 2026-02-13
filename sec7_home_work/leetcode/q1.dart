class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < minPrice) {
        minPrice = prices[i];
      } else {
        int profit = prices[i] - minPrice;
        if (profit > maxProfit) {
          maxProfit = profit;
        }
        
      }
    }
    return maxProfit;
  }
}

void main() {
  Solution solution1 = Solution();
  int x = solution1.maxProfit([2, 1, 2, 1, 0, 1, 2]);
  print(x);
}
