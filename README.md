NSMutableArrayRearrangingExtensions
===================================

a extensions for NSMutableArray

```objective-c
- (void)moveObjectToHead:(id)object;
- (void)moveObjectToTail:(id)object;
- (void)moveObjectsToHead:(NSArray*)objects;
- (void)moveObjectsToTail:(NSArray*)objects;
- (NSArray*)objectsForAfterObject:(id)object;
- (NSArray*)objectsForBeforeObject:(id)object;
- (void)moveObjectsForAfterObjectToHead:(id)object;
- (void)moveObjectsForBeforeObjectToTail:(id)object;
- (void)insertObjects:(NSArray *)objects atIndex:(NSUInteger)index;
```
