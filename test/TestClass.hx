/**
 * <p>A node in the entity hierarchy, and a collection of components.</p>
 *
 * <p>To iterate over the hierarchy, use the parent, firstChild, next and firstComponent fields. For
 * example:</p>
 *
 * <pre>
 * // Iterate over entity's children
 * var child = entity.firstChild;
 * while (child != null) {
 *     var next = child.next; // Store in case the child is removed in process()
 *     process(child);
 *     child = next;
 * }
 * </pre>
 */
class TestClass
{
	static function main() {}

	/**
		The value of something.

		@default 10
	**/
	public var value:Int = 10;

	/**
		Tests things.

		@param foo Uh, the foo to test?
			Also some newlines.

			Even a paragraph.

				trace("Even a freaking code sample")

		@return The result of the `foo` test.
	**/
	public static function test(foo:String):String
	{
		return "foo";
	}

	/**
		Simple doc
	**/
	public static function haxe_doc_style()
	{

	}

	/**
	 * Javadoc style
	 *
	 * Asterix on previous line should still be stripped (no trailing space)
	 */
	public static function java_doc_style()
	{

	}

	/**
	 * Adds a child to this entity.
	 * @param append Whether to add the entity to the end or beginning of the child list.
	 * @returns This instance, for chaining.
	 */
	public static function java_doc_style_spaces()
	{

	}

	/**
		Tests @returns without @param

		@return A random String.
	**/
	public static function java_doc_return_without_param() {

	}

	/**
	 * Creates a FlxSprite at a specified position with a specified one-frame graphic.
	 * If none is provided, a 16x16 image of the HaxeFlixel logo is used.
	 *
	 * @param   X               The initial X position of the sprite.
	 * @param   Y               The initial Y position of the sprite.
	 * @param   SimpleGraphic   The graphic you want to display (OPTIONAL - for simple stuff only, do NOT use for animated images!).
	 */
	public static function java_doc_multiline_comments() {

	}

	@:dox(hide) public var hiddenField:String;

	/**
	  @param x some documentation for parameters.
	**/
	public function foo(x:Int):Void
	{
	}

    /**
      @throws com.qifun.jsonStream.JsonDeserializerError 反序列化时格式错误
    **/
	public function testThrows() { }
}

/**
	Some *documentation*.
**/
typedef TestTypeDef =
{
	/**
		Some description with a type reference `Foo`.

		And a Second Line `"type":"ItemDetail"`
	**/
	var myField:String;

	@:dox(hide) var hiddenField:Bool;
}

/**
	Some *documentation*.
**/
enum TestEnum
{
	/**
		Some *documentation*.
	**/
	@:dox(hide) HiddenConstructor;

	/**
		Some *documentation*.
	**/
	VisibleConstructor;
}

@:dox(hide) enum TestHiddenEnum {}
