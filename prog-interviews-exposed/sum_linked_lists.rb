# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  dummy_head = ListNode.new(0)
  curr = dummy_head
  p = l1
  q = l2
  carry = 0

  while !p.nil? || !q.nil?
    x = !p.nil? ? p.val : 0
    y = !q.nil? ? q.val : 0
   
    sum = carry + x + y
    
    carry = sum / 10
    
    curr.next = ListNode.new(sum % 10)
    curr = curr.next
     
    if !p.nil?
      p = p.next
    end
    if !q.nil?
      q = q.next
    end
  end
  
  if carry > 0
    curr.next = ListNode.new(carry)
  end
      
  return dummy_head.next

end

l1 = ListNode.new(2)
l1.next = ListNode.new(4)
l1.next.next = ListNode.new(3)

l2 = ListNode.new(5)
l2.next = ListNode.new(6)
l2.next.next = ListNode.new(4)

returned_node = add_two_numbers(l1, l2)

puts returned_node.val
puts returned_node.next.val
puts returned_node.next.next.val