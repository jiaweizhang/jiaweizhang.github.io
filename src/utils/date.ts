export function getFormattedDate(
	date: string | number | Date,
	options: Intl.DateTimeFormatOptions = {},
	locale: Intl.LocalesArgument = "en-US"
) {
	const formatOptions: Intl.DateTimeFormatOptions = {
		year: "numeric",
		month: "long",
		day: "numeric",
		...options,
	};
	return new Date(date).toLocaleDateString(locale, formatOptions);
}
