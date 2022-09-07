def count_summations(n):
    def __cs(L):
        count = 0
        while L[0] != 1:
            print(L)
            count += 1
            for i in range(len(L) - 1, 0 - 1, -1):
                if L[i] > 1:
                    # do we need to append an element?
                    if i == len(L) - 1 or L[i+1] + 1 > L[i] - 1:
                        L.append(1)
                        L[i] -= 1
                        break
                    else:
                        L[i+1] += 1
                        L[i] -= 1
                        break
        return count + 1
    return __cs([n - 1, 1])
                

solution = count_summations(100)
print(solution)


