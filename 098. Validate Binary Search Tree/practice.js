var isValidBST = function (root) {
    if (!root) return true;
    if (root.left != null) {
        if (root.left.val >= root.val) {
            return false;
        }
        if (root.left.left == null && root.left.right == null) {
            if (root.right == null || root.right.left != null || root.right.right != null)
                return false
        }
    }
    if (root.right != null) {
        if (root.right.val <= root.val) {
            return false;
        }
        if (root.right.left == null && root.right.right == null) {
            if (root.left == null || root.left.left != null || root.left.right != null)
                return false
        }
    }

    return isValidBST(root.left) && isValidBST(root.right)

};