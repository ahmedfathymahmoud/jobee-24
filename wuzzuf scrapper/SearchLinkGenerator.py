class wuzzufSearchLink:
    def __init__(self, country="",city="", start="0", category="", post_date="", level="", jobType="", searchString=""):
        self.country = country
        self.city = city
        self.start = start
        self.date = post_date
        # items: within_1_week within_24_hours within_1_month
        self.category = category.replace(' ','-')
        self.level = level
        self.jobType = jobType
        self.searchString = searchString
        self.baseLink = 'https://wuzzuf.net'

    def generate(self):

        if self.category != "":
            link = self.baseLink + "/a/" + self.category + "?start=" + self.start
            self.searchString = self.category
            self.date=self.date.replace('_',' ').replace('within','Past').replace('h','H')
        else:
            link = self.baseLink + "/search/jobs?q=" + self.searchString + "&start=" + self.start
        if self.country != "":
            link += '&filters[country][0]=' + self.country
        if self.city != "":
            link += '&filters[city][0]=' + self.city
        if self.level != "":
            link += '&filters[career_level][0]=' + self.level
        if self.jobType != "":
            link += '&filters[job_types][0]=' + self.jobType
        if self.date != "":
            link += '&filters[post_date][0]=' + self.date
        return link.replace('[', '%5B').replace(']', '%5D').replace(" ", '%20')

# link=wuzzufSearchLink(city="Alexandria",start="20",searchString="it",level="Entry Level",jobType='Full Time',post_date="within_1_week")
# print(link.generate())
