array_remove_index( array_name, index, preserve_keys, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_remove_index() Called without array_name!" );
		return;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_remove_index() Received invalid array %s!", array_name ) );
		return;
	}
	if ( !isDefined( index ) || !isInt( index ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", ( "array_remove_index() Received invalid index for array %s!", array_name );
		return;
	}
	if ( !isDefined( array[ index ] ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", ( "array_remove_index() Index %s does not index in array %s!", index, array_name );
		return;
	}
	level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_remove_index(%s,%s,%s) new array size: %s", array_name, index, preserve_keys, array.size ) );
	arrayRemoveIndex( array, index, preserve_keys );
}

array_remove_key( array_name, key, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_remove_key() Called without array_name!" );
		return;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_remove_key() Received invalid array %s!", array_name ) );
		return;
	}
	if ( !isDefined( key ) || !isString( key ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", ( "array_remove_key() Received invalid key for array %s!", array_name );
		return;
	}
	if ( !isDefined( array[ key ] ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", ( "array_remove_key() Key %s does not index in array %s!", key, array_name );
		return;
	}
	level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_remove_key(%s,%s) new array size: %s", array_name, key, array.size ) );
	arrayRemoveKey( array, key );
}

array_remove_value( array_name, value, remove_undefined, preserve_keys, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_remove_value() Called without array_name!" );
		return;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_remove_value() Received invalid array %s!", array_name ) );
		return;
	}
	if ( !isDefined( value ) && !remove_undefined )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", ( "array_remove_value() Received invalid value for array %s!", array_name );
		return;
	}
	if ( remove_undefined )
	{
		level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_remove_value(%s,undefined,%s,%s)", array_name, remove_undefined, preserve_keys ) );
		arrayRemoveValue( array, value, preserve_keys );
	}
	else 
	{
		if ( !isInArray( array, value ) )
		{
			level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_remove_value() %s value is not in %s array!", array_name, value, remove_undefined, preserve_keys ) );
		}
		else 
		{
			level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_remove_value(%s,%s,%s,%s) new array size: %s", array_name, value, remove_undefined, preserve_keys, array.size ) );
			arrayRemoveValue( array, value, preserve_keys );
		}
	}
}

array_set_key_value( array_name, key, value, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_set_key_value() Called without array_name!" );
		return;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_set_key_value() Received invalid array %s!", array_name ) );
		return;
	}
	if ( !isDefined( key ) || !isString( key ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_set_key_value() Received invalid key for array %s!", array_name );
		return;
	}
	if ( !isDefined( value ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_set_key_value() Received invalid value for array %s key %s!", array_name, key );
		return;
	}
	if ( !isDefined( array[ key ] ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_set_key_value() Key %s does not index in %s array!", key, array_name );
		return;		
	}
	level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_set_key_value(%s,%s,%s)", array_name, key, value );
	array[ key ] = value;
}

array_set_index_value( array_name, index, value, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_set_index_value() Called without array_name!" );
		return;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_set_index_value() Received invalid array %s!", array_name ) );
		return;
	}
	if ( !isDefined( index ) || !isInt( index ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_set_index_value() Received invalid index for array %s!", array_name );
		return;
	}
	if ( !isDefined( value ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_set_index_value() Received invalid value for array %s index %s!", array_name, index );
		return;
	}
	if ( !isDefined( array[ index ] ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_set_index_value() Index %s does not index in %s array!", index, array_name );
		return;		
	}
	level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_set_index_value(%s,%s,%s)", array_name, index, value );
	array[ index ] = value;
}

array_add_index_value( array_name, value, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_add_index_value() Called without array_name!" );
		return;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_add_index_value() Received invalid array %s!", array_name ) );
		return;
	}
	if ( !isDefined( index ) || !isInt( index ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_add_index_value() Received invalid index for array %s!", array_name );
		return;
	}
	if ( !isDefined( value ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_add_index_value() Received invalid value for array %s index %s!", array_name, index );
		return;
	}
	level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_add_index_value(%s,%s) new array size: %s", array_name, value, array.size );
	array[ array.size ] = value;
}

array_add_key_value( array_name, key, value, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_add_key_value() Called without array_name!" );
		return;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_add_key_value() Received invalid array %s!", array_name ) );
		return;
	}
	if ( !isDefined( key ) || !isString( key ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_add_key_value() Received invalid key for array %s!", array_name );
		return;
	}
	if ( !isDefined( value ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_add_key_value() Received invalid value for array %s key %s!", array_name, key );
		return;
	}
	level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_add_key_value(%s,%s,%s) new array size: %s", array_name, key, value, array.size );
	array[ key ] = value;
}

array_get_key_value( array_name, key, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_get_key_value() Called without array_name!" );
		return undefined;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_get_key_value() Received invalid array %s!", array_name ) );
		return undefined;
	}
	if ( !isDefined( key ) || !isString( key ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_get_key_value() Received invalid key for array %s!", array_name );
		return undefined;
	}
	if ( !isDefined( array[ key ] ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_get_key_value() Key %s does not index in %s array!", key, array_name );
		return undefined;		
	}
	level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_get_key_value(%s,%s) returns valid value", array_name, key );
	return array[ key ];
}

array_get_index_value( array_name, index, array )
{
	if ( !isDefined( array_name ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", "array_get_index_value() Called without array_name!" );
		return undefined;
	}
	if ( !array_validate( array ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_get_index_value() Received invalid array %s!", array_name ) );
		return undefined;
	}
	if ( !isDefined( index ) || !isInt( index ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_get_index_value() Received invalid index for array %s!", array_name );
		return undefined;
	}
	if ( !isDefined( array[ index ] ) )
	{
		level COM_PRINTF( "scr_debug_log.txt", "screrror", va( "array_get_index_value() index %s does not index in %s array!", index, array_name );
		return undefined;		
	}
	level COM_PRINTF( "scr_debug_log.txt", "scrinfo", va( "array_get_index_value(%s,%s) returns valid value", array_name, index );
	return array[ index ];
}

//getKeyBinding()
//getCommandFromKey()