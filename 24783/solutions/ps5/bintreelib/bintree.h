#include <stdio.h>
#include <cstddef>

template <class KeyClass,class ValueClass>
class BinaryTree
{
protected:
	class Node
	{
	public:
		KeyClass key;
		ValueClass value;
		Node *left,*right,*up;
		int height;
		Node() : left(nullptr),right(nullptr),up(nullptr),height(1)
		{
		}
		int Balance(void) const
		{
			int leftHeight=0,rightHeight=0;
			if(nullptr!=left)
			{
				leftHeight=left->height;
			}
			if(nullptr!=right)
			{
				rightHeight=right->height;
			}
			return leftHeight-rightHeight;
		}
	};
public:
	bool autoRebalance;

	class NodeHandle
	{
	friend BinaryTree <KeyClass,ValueClass>;
	private:
		Node *ptr;
	public:
		inline void Nullify(void)
		{
			ptr=nullptr;
		}
		inline bool IsNull(void) const
		{
			return ptr==nullptr;
		}
		inline bool IsNotNull(void) const
		{
			return ptr!=nullptr;
		}
		inline bool operator==(NodeHandle hd) const
		{
			return this->ptr==hd.ptr;
		}
		inline bool operator!=(NodeHandle hd) const
		{
			return this->ptr!=hd.ptr;
		}
		inline bool operator==(std::nullptr_t) const
		{
			return ptr==nullptr;
		}
		inline bool operator!=(std::nullptr_t) const
		{
			return ptr!=nullptr;
		}
	};
protected:
	Node *GetNode(NodeHandle ndHd)
	{
		if(ndHd.IsNotNull())
		{
			return ndHd.ptr;
		}
		return nullptr;
	}
	const Node *GetNode(NodeHandle ndHd) const
	{
		if(ndHd.IsNotNull())
		{
			return ndHd.ptr;
		}
		return nullptr;
	}
	static NodeHandle MakeHandle(Node *nodePtr)
	{
		NodeHandle ndHd;
		ndHd.ptr=nodePtr;
		return ndHd;
	}
	bool UpdateHeight(Node *nodePtr)
	{
		int leftHeight=1,rightHeight=1;
		if(nullptr!=nodePtr->left)
		{
			leftHeight=nodePtr->left->height+1;
		}
		if(nullptr!=nodePtr->right)
		{
			rightHeight=nodePtr->right->height+1;
		}
		int newHeight=1;
		if(leftHeight>rightHeight)
		{
			newHeight=leftHeight;
		}
		else
		{
			newHeight=rightHeight;
		}
		if(newHeight!=nodePtr->height)
		{
			nodePtr->height=newHeight;
			return true;
		}
		return false;
	}
	void UpdateHeightCascade(Node *nodePtr)
	{
		bool first=true;
		while(nullptr!=nodePtr)
		{
			auto changed=UpdateHeight(nodePtr);
			if(true!=first && true!=changed)
			{
				break;
			}
			nodePtr=nodePtr->up;
			first=false;
		}
	}

private:
	Node *root;
	long long int nElem;

public:
	BinaryTree()
	{
		autoRebalance=false;
		root=nullptr;
		nElem=0;
	}
	~BinaryTree()
	{
		CleanUp();
	}
	void CleanUp(void)
	{
		CleanUp(GetNode(RootNode()));
	}
private:
	void CleanUp(Node *nodePtr)
	{
		if(nullptr!=nodePtr)
		{
			CleanUp(nodePtr->left);
			CleanUp(nodePtr->right);
			delete nodePtr;
		}
	}
public:
	static NodeHandle Null(void)
	{
		NodeHandle ndHd;
		ndHd.ptr=nullptr;
		return ndHd;
	}
	NodeHandle RootNode(void) const
	{
		return MakeHandle(root);
	}
	NodeHandle Left(NodeHandle ndHd) const
	{
		auto nodePtr=GetNode(ndHd);
		if(nullptr!=nodePtr)
		{
			return MakeHandle(nodePtr->left);
		}
		return Null();
	}
	NodeHandle Up(NodeHandle ndHd) const
	{
		auto nodePtr=GetNode(ndHd);
		if(nullptr!=nodePtr)
		{
			return MakeHandle(nodePtr->up);
		}
		return Null();
	}
	NodeHandle Right(NodeHandle ndHd) const
	{
		auto nodePtr=GetNode(ndHd);
		if(nullptr!=nodePtr)
		{
			return MakeHandle(nodePtr->right);
		}
		return Null();
	}

	long long int GetN(void) const
	{
		return nElem;
	}
	const KeyClass &GetKey(NodeHandle ndHd) const
	{
		// This will crash if ndHd==nullptr.  Therefore, ndHd must be non-null to use this function.
		return GetNode(ndHd)->key;
	}
	ValueClass &GetValue(NodeHandle ndHd)
	{
		// This will crash if ndHd==nullptr.  Therefore, ndHd must be non-null to use this function.
		return GetNode(ndHd)->value;
	}
	const ValueClass &GetValue(NodeHandle ndHd) const
	{
		// This will crash if ndHd==nullptr.  Therefore, ndHd must be non-null to use this function.
		return GetNode(ndHd)->value;
	}
	NodeHandle FindNode(const KeyClass &key) const
	{
		auto ndHd=RootNode();
		while(nullptr!=ndHd)
		{
			if(key==GetKey(ndHd))
			{
				return ndHd;
			}
			if(key<GetKey(ndHd))
			{
				ndHd=Left(ndHd);
			}
			else
			{
				ndHd=Right(ndHd);
			}
		}
		return Null();
	}
	bool IsKeyIncluded(const KeyClass &key) const
	{
		return FindNode(key).IsNotNull();
	}
	int GetHeight(NodeHandle ndHd) const
	{
		auto nodePtr=GetNode(ndHd);
		if(nullptr!=nodePtr)
		{
			return nodePtr->height;
		}
		return 0;
	}

protected:
	void Rebalance(Node *nodePtr)
	{
		while(NULL!=nodePtr)
		{
			const int balance=nodePtr->Balance();

			if(balance<-2 || 2<balance)
			{
				return; // Abort re-balancing to prevent potential infinite loop.
			}

			if(2<=balance) // left-heavy
			{
				if(0>nodePtr->left->Balance()) // Left-Right Case
				{
					this->RotateLeft(MakeHandle(nodePtr->left)); // Force it to be Left-Left Case
				}
				this->RotateRight(MakeHandle(nodePtr)); // Left-Left Case
			}
			else if(balance<=-2) // right-heavy
			{
				if(0<nodePtr->right->Balance()) // Right-Left Case
				{
					this->RotateRight(MakeHandle(nodePtr->right)); // Force it to be Right-Right Case
				}
				this->RotateLeft(MakeHandle(nodePtr)); // Right-Right Case
			}

			nodePtr=nodePtr->up;
		}
	}

public:
	NodeHandle Insert(const KeyClass &key,const ValueClass &value)
	{
		auto newNode=new Node;
		newNode->key=key;
		newNode->value=value;

		auto ndHd=RootNode();
		if(ndHd.IsNull())
		{
			root=newNode;
		}
		else
		{
			while(ndHd.IsNotNull())
			{
				if(key<GetKey(ndHd))
				{
					if(Left(ndHd)!=nullptr)
					{
						ndHd=Left(ndHd);
					}
					else
					{
						GetNode(ndHd)->left=newNode;
						newNode->up=GetNode(ndHd);
						break;
					}
				}
				else
				{
					if(Right(ndHd)!=nullptr)
					{
						ndHd=Right(ndHd);
					}
					else
					{
						GetNode(ndHd)->right=newNode;
						newNode->up=GetNode(ndHd);
						break;
					}
				}
			}
		}
		UpdateHeightCascade(newNode);
		nElem++;
		if(true==autoRebalance)
		{
			Rebalance(newNode);
		}
		return MakeHandle(newNode);
	}

	NodeHandle First(void) const
	{
		auto ndHd=RootNode();
		while(Left(ndHd).IsNotNull())
		{
			ndHd=Left(ndHd);
		}
		return ndHd;
	}
	NodeHandle FindNext(NodeHandle ndHd) const
	{
		auto rightHd=Right(ndHd);
		if(rightHd.IsNotNull())
		{
			// Has a right sub-tree.
			// The next node is the left-most of the right sub-tree.
			ndHd=Right(ndHd);
			while(Left(ndHd).IsNotNull())
			{
				ndHd=Left(ndHd);
			}
			return ndHd;
		}
		else
		{
			// Does not have a right sub-tree.
			// Go up until it goes up from the left.
			while(ndHd.IsNotNull())
			{
				auto upHd=Up(ndHd);
				if(upHd.IsNotNull() && ndHd==Left(upHd))
				{
					return upHd;
				}
				ndHd=upHd;
			}
			return Null();
		}
	}
	NodeHandle Last(void) const
	{
		auto ndHd=RootNode();
		while(Right(ndHd).IsNotNull())
		{
			ndHd=Right(ndHd);
		}
		return ndHd;
	}
	NodeHandle FindPrev(NodeHandle ndHd) const
	{
		auto leftHd=Left(ndHd);
		if(leftHd.IsNotNull())
		{
			// Has a Left sub-tree.
			// The next node is the right-most of the Left sub-tree.
			ndHd=Left(ndHd);
			while(Right(ndHd).IsNotNull())
			{
				ndHd=Right(ndHd);
			}
			return ndHd;
		}
		else
		{
			// Does not have a Left sub-tree.
			// Go up until it goes up from the right.
			while(ndHd.IsNotNull())
			{
				auto upHd=Up(ndHd);
				if(upHd.IsNotNull() && ndHd==Right(upHd))
				{
					return upHd;
				}
				ndHd=upHd;
			}
			return Null();
		}
	}

private:
	NodeHandle RightMostOf(NodeHandle ndHd)
	{
		while(Right(ndHd).IsNotNull())
		{
			ndHd=Right(ndHd);
		}
		return ndHd;
	}
	bool SimpleDetach(NodeHandle ndHd)
	{
		if(ndHd.IsNotNull())
		{
			auto upHd=Up(ndHd);
			auto rightHd=Right(ndHd);
			auto leftHd=Left(ndHd);
			if(rightHd.IsNull() && leftHd.IsNull())
			{
				if(upHd.IsNull()) // ndHd is a root.
				{
					root=nullptr;
				}
				else
				{
					auto upPtr=GetNode(upHd);
					if(Left(upHd)==ndHd)
					{
						upPtr->left=nullptr;
					}
					else if(Right(upHd)==ndHd)
					{
						upPtr->right=nullptr;
					}
					else
					{
						fprintf(stderr,"Error! Internal Tree Data Structure is broken.\n");
						return false;
					}
				}
				UpdateHeightCascade(GetNode(upHd));
				return true;
			}
			else if(rightHd.IsNull())
			{
				if(upHd.IsNull())
				{
					root=GetNode(leftHd);
					root->up=nullptr;
					return true;
				}
				else
				{
					// Connect upHd and leftHd
					auto upPtr=GetNode(upHd);
					auto leftPtr=GetNode(leftHd);
					if(Left(upHd)==ndHd)
					{
						upPtr->left=leftPtr;
						leftPtr->up=upPtr;
						UpdateHeightCascade(GetNode(upHd));
						return true;
					}
					else if(Right(upHd)==ndHd)
					{
						upPtr->right=leftPtr;
						leftPtr->up=upPtr;
						UpdateHeightCascade(GetNode(upHd));
						return true;
					}
					else
					{
						fprintf(stderr,"Error! Internal Tree Data Structure is broken.\n");
						return false;
					}
				}
			}
			else if(leftHd.IsNull())
			{
				if(upHd.IsNull())
				{
					root=GetNode(rightHd);
					root->up=nullptr;
					return true;
				}
				else
				{
					// Connect upHd and rightHd
					auto upPtr=GetNode(upHd);
					auto rightPtr=GetNode(rightHd);
					if(Left(upHd)==ndHd)
					{
						upPtr->left=rightPtr;
						rightPtr->up=upPtr;
						UpdateHeightCascade(GetNode(upHd));
						return true;
					}
					else if(Right(upHd)==ndHd)
					{
						upPtr->right=rightPtr;
						rightPtr->up=upPtr;
						UpdateHeightCascade(GetNode(upHd));
						return true;
					}
					else
					{
						fprintf(stderr,"Error! Internal Tree Data Structure is broken.\n");
						return false;
					}
				}
			}
			else
			{
				return false;
			}
		}
		return false;
	}
public:
	bool Delete(NodeHandle ndHd)
	{
		if(true==SimpleDetach(ndHd))
		{
			auto up=Up(ndHd); // Save pointer for re-balancing
			delete GetNode(ndHd);
			--nElem;
			if(true==autoRebalance)
			{
				Rebalance(GetNode(up));
			}
			return true;
		}
		else if(ndHd.IsNotNull())
		{
			// Right most of left. Always Simple-Detachable.
			// Also, since SimpleDetach of itself has failed, it must have a left sub-tree.
			auto RMOL=RightMostOf(Left(ndHd));
			if(true==SimpleDetach(RMOL))
			{
				// Now, RMOL needs to take position of ndHd.
				auto RMOLptr=GetNode(RMOL);
				auto upPtr=GetNode(Up(ndHd));
				auto leftPtr=GetNode(Left(ndHd));
				auto rightPtr=GetNode(Right(ndHd));

				auto upOfRMOLptr=RMOLptr->up;
				if(upOfRMOLptr==GetNode(ndHd))
				{
					upOfRMOLptr=RMOLptr;	// Now it is correct.
				}

				if(nullptr==upPtr)
				{
					root=RMOLptr;
					root->up=nullptr;
				}
				else if(upPtr->left==GetNode(ndHd))
				{
					upPtr->left=RMOLptr;
					RMOLptr->up=upPtr;
				}
				else if(upPtr->right==GetNode(ndHd))
				{
					upPtr->right=RMOLptr;
					RMOLptr->up=upPtr;
				}
				else
				{
					fprintf(stderr,"Error! Internal Tree Data Structure is broken.\n");
					return false;
				}

				RMOLptr->left=leftPtr;
				if(nullptr!=leftPtr)
				{
					leftPtr->up=RMOLptr;
				}
				RMOLptr->right=rightPtr;
				if(nullptr!=rightPtr)
				{
					rightPtr->up=RMOLptr;
				}

				UpdateHeightCascade(RMOLptr);

				delete GetNode(ndHd);
				--nElem;

				if(true==autoRebalance)
				{
					Rebalance(upOfRMOLptr);
				}
				return true;
			}
		}
		return false; // Cannot delete a null node.
	}

	bool RotateLeft(NodeHandle ndHd)
	{
		auto nodePtr=GetNode(ndHd);
		if(nullptr!=nodePtr && nullptr!=nodePtr->right)
		{
			auto rightPtr=nodePtr->right;
			auto leftOfRight=nodePtr->right->left;

			if(nullptr==nodePtr->up)
			{
				root=rightPtr;
				rightPtr->up=nullptr;
			}
			else
			{
				rightPtr->up=nodePtr->up;
				if(nodePtr->up->left==nodePtr)
				{
					nodePtr->up->left=rightPtr;
				}
				else
				{
					nodePtr->up->right=rightPtr;
				}
			}

			rightPtr->left=nodePtr;
			nodePtr->up=rightPtr;

			nodePtr->right=leftOfRight;
			if(nullptr!=leftOfRight)
			{
				leftOfRight->up=nodePtr;
			}
			UpdateHeight(nodePtr);        // Needs to be two steps.
			UpdateHeightCascade(rightPtr);// Even when the height of rightPtr doesn't change, upper node's height may change.
			return true;
		}
		return false;
	}

	bool RotateRight(NodeHandle ndHd)
	{
		auto nodePtr=GetNode(ndHd);
		if(nullptr!=nodePtr && nullptr!=nodePtr->left)
		{
			auto leftPtr=nodePtr->left;
			auto rightOfLeft=nodePtr->left->right;

			if(nullptr==nodePtr->up)
			{
				root=leftPtr;
				leftPtr->up=nullptr;
			}
			else
			{
				leftPtr->up=nodePtr->up;
				if(nodePtr->up->right==nodePtr)
				{
					nodePtr->up->right=leftPtr;
				}
				else
				{
					nodePtr->up->left=leftPtr;
				}
			}

			leftPtr->right=nodePtr;
			nodePtr->up=leftPtr;

			nodePtr->left=rightOfLeft;
			if(nullptr!=rightOfLeft)
			{
				rightOfLeft->up=nodePtr;
			}
			UpdateHeight(nodePtr);       // Needs to be two steps.
			UpdateHeightCascade(leftPtr);// Even when the height of rightPtr doesn't change, upper node's height may change.
			return true;
		}
		return false;
	}

	void TreeToVine(void)
	{
		auto ptr=GetNode(RootNode());
		while(nullptr!=ptr)
		{
			if(nullptr!=ptr->left)
			{
				RotateRight(MakeHandle(ptr));
				ptr=ptr->up;
			}
			else
			{
				ptr=ptr->right;
			}
		}
	}

	void Compression(int n)
	{
		auto nodePtr=GetNode(RootNode());
		while(nullptr!=nodePtr && 0<n)
		{
			if(nullptr!=nodePtr->right)
			{
				RotateLeft(MakeHandle(nodePtr));
				nodePtr=nodePtr->up->right;
			}
			else
			{
				break;
			}
			--n;
		}
	}

	void VineToTree(void)
	{
		int n=0;

		for(auto node=GetNode(RootNode()); nullptr!=node; node=node->right)
		{
			++n;
		}

		int k=1;
		while(k<=n)
		{
			k*=2;
		}
		k/=2;

		int lc=n+1-k;
		Compression(lc);

		n-=lc;
		while(1<n)
		{
			Compression(n/2);
			n/=2;
		}
	}
};


